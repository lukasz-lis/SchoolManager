package com.politechnika.security;

import com.politechnika.model.User;
import com.politechnika.utlis.MongoDBDataStore;
import org.apache.log4j.Logger;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.mongodb.morphia.Datastore;

import java.io.Serializable;
import org.apache.shiro.util.SimpleByteSource;


/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 23.11.13
 * Time: 20:54
 * To change this template use File | Settings | File Templates.
 */


public class MongoDBRealm extends AuthorizingRealm implements Serializable {

    private Logger LOG;
    private Datastore ds;


    public MongoDBRealm() {
        LOG = Logger.getLogger(MongoDBRealm.class);
        ds = MongoDBDataStore.getDs();
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        LOG.debug("Wchodze do pustej metody");
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }


    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        LOG.debug("Wchodze do dobrej metody");
        UsernamePasswordToken upToken = (UsernamePasswordToken) authenticationToken;

        if (upToken.getUsername() == null) {
            LOG.debug("Użytkownik pusty nie mam jak znaleść");
            throw new AuthenticationException("Username is null");
        }
        LOG.debug("Haslo usera z formularza"+upToken.getPassword());

        return findPassowrdByUsername(upToken.getUsername());
    }

    private SimpleAuthenticationInfo findPassowrdByUsername(String username) {
        
        User user = ds.find(User.class, "username", username).get();
        if(user == null) {
            LOG.debug("Nie znalazłem użytkownika");
            throw new UnknownAccountException("Unknown user "+username);
        }
        LOG.debug("Hasło usera z bazy"+user.getPassword());
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(username, user.getPassword(), getName());
        info.setCredentialsSalt(new SimpleByteSource(user.getSalt()));
        return info;
    }


}
