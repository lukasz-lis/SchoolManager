package com.politechnika.model;

import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Model class.
 * User: Łukasz
 * Date: 18.11.13
 * Time: 21:16
 */
@Entity("User")
@XmlRootElement
public class Student extends User{

    @Reference
    private User carePerson;
    private Integer age;

    public User getCarePerson() {
        return carePerson;
    }

    public void setCarePerson(User carePerson) {
        this.carePerson = carePerson;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
