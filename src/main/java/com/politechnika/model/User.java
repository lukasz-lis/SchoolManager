package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Embedded;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;

import javax.xml.bind.annotation.XmlRootElement;
import org.mongodb.morphia.annotations.Indexed;

/**
 * Model group
 * User: Łukasz
 * Date: 18.11.13
 * Time: 22:39
 */
@XmlRootElement
@Entity("User")
public class User {
    @Id
    private ObjectId objectId;
    @Indexed(unique = true)
    private String username;
    private String password;
    private String role;
    private String firstName;
    private String secName;
    @Indexed(unique = true)
    private String email;
    private String salt;
    @Embedded
    private PhoneE phoneses;

    public User() {
    }

    
    public ObjectId getObjectId() {
        return objectId;
    }

    public void setObjectId(ObjectId objectId) {
        this.objectId = objectId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecName() {
        return secName;
    }

    public void setSecName(String secName) {
        this.secName = secName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public PhoneE getPhoneses() {
        return phoneses;
    }

    public void setPhoneses(PhoneE phoneses) {
        this.phoneses = phoneses;
    }
    
}
