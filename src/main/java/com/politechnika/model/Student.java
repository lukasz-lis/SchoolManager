package com.politechnika.model;

import java.util.List;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;
import org.bson.types.ObjectId;

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

    public Student(User carePerson, Integer age) {
        this.carePerson = carePerson;
        this.age = age;
    }

    public Student(User carePerson, Integer age, ObjectId objectId, String username, String password, String role, String firstName, String secName, String email, String salt, List<AdressE> adresses, List<PhoneE> phoneses) {
        super(objectId, username, password, role, firstName, secName, email, salt, adresses, phoneses);
        this.carePerson = carePerson;
        this.age = age;
    }

    public Student(ObjectId objectId, String username, String password, String role, String firstName, String secName, String email, String salt, List<AdressE> adresses, List<PhoneE> phoneses) {
        super(objectId, username, password, role, firstName, secName, email, salt, adresses, phoneses);
    }

    public Student() {
    }

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
