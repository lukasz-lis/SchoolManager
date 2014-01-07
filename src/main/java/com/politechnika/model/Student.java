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
@XmlRootElement
@Entity("User")
public class Student extends User{

    @Reference
    private Care care;
    private Integer age;

    public Student(Care care, Integer age) {
        this.care = care;
        this.age = age;
    }

    public Student(Care care, Integer age, ObjectId objectId, String username, String password, String role, String firstName, String secName, String email, String salt, List<AdressE> adresses, List<PhoneE> phoneses) {
        super(objectId, username, password, role, firstName, secName, email, salt, adresses, phoneses);
        this.care = care;
        this.age = age;
    }

    public Student(ObjectId objectId, String username, String password, String role, String firstName, String secName, String email, String salt, List<AdressE> adresses, List<PhoneE> phoneses) {
        super(objectId, username, password, role, firstName, secName, email, salt, adresses, phoneses);
    }

    public Student() {
    }

    public Care getCare() {
        return care;
    }

    public void setCare(Care care) {
        this.care = care;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
