package com.politechnika.model;

import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;
import org.mongodb.morphia.annotations.Embedded;

/**
 * Model group.
 * User: Łukasz
 * Date: 18.11.13
 * Time: 21:16
 */
@XmlRootElement
@Entity("User")
public class Student extends User{

    @Reference
    private User care;
    private Integer age;
    @Embedded
    private AdressE adresses;

    public Student() {
    }

    public User getCare() {
        return care;
    }

    public void setCare(User care) {
        this.care = care;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public AdressE getAdresses() {
        return adresses;
    }

    public void setAdresses(AdressE adresses) {
        this.adresses = adresses;
    }
    
}
