package com.politechnika.security;

import com.politechnika.model.*;
import com.politechnika.utlis.MongoDBDataStore;
import org.apache.log4j.Logger;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.mongodb.morphia.Datastore;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import org.apache.shiro.authz.SimpleAuthorizationInfo;

import org.apache.shiro.util.SimpleByteSource;

/**
 * Created with IntelliJ IDEA. User: Łukasz Date: 23.11.13 Time: 20:54 To change
 * this template use File | Settings | File Templates.
 */
public class MongoDBRealm extends AuthorizingRealm implements Serializable {

    public static final String ADMIN_ROLE = "ADMIN";
    public static final String STUDENT_ROLE = "STUDENT";
    public static final String LECTURER_ROLE = "LECTURER";
    public static final String CARE_ROLE = "CARE";
    public static final String OFFICE_ROLE = "OFFICE";
    private Logger LOG;
    private Datastore ds;

    public MongoDBRealm() {
        LOG = Logger.getLogger(MongoDBRealm.class);
        ds = MongoDBDataStore.getDs();
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = (String) principalCollection.getPrimaryPrincipal();
        LOG.debug("Imie uæytkownika" + username);

        User user = ds.find(User.class, "username", username).get();

        final Set<String> roles = new HashSet<String>();
        roles.add(user.getRole());

        return new SimpleAuthorizationInfo(roles);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken upToken = (UsernamePasswordToken) authenticationToken;

        if (upToken.getUsername() == null) {
  
            throw new AuthenticationException("Username is null");
        }


        return findPassowrdByUsername(upToken.getUsername());
    }

    private SimpleAuthenticationInfo findPassowrdByUsername(String username) {

        User user = ds.find(User.class, "username", username).get();
        if (user == null) {           
            throw new UnknownAccountException("Unknown user " + username);
        }      
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(username, user.getPassword(), getName());
        info.setCredentialsSalt(new SimpleByteSource(user.getSalt()));
        return info;
    }

    private static User createAuthorization(User user) {

        RandomNumberGenerator rng = new SecureRandomNumberGenerator();
        user.setSalt(rng.nextBytes().toBase64());
        String plainPassword = user.getPassword();
        user.setPassword(new Sha256Hash(plainPassword, user.getSalt(), 100000).toBase64());

        return user;
    }

    public static User createUserAuthorization(User user) {
        user = (User) createAuthorization(user);
        return user;
    }

    public static Student createStudentAuthorization(Student student) {
        student = (Student) createAuthorization(student);
        return student;
    }
}
