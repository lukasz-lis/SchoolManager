/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;
import org.mongodb.morphia.annotations.Version;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author l.lis
 */
@XmlRootElement
@Entity
public class Presence {

    @Id
    private String presenceID = new ObjectId().toString();

    @Reference
    private Lection lection;
    @Reference
    private Student student;
    String presened;
    @Version
    private Long v;

    public Long getV() {
        return v;
    }

    public void setV(Long v) {
        this.v = v;
    }

    public String getPresenceID() {
        return presenceID;
    }

    public void setPresenceID(String presenceID) {
        this.presenceID = presenceID;
    }

    public Lection getLection() {
        return lection;
    }

    public void setLection(Lection lection) {
        this.lection = lection;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getPresened() {
        return presened;
    }

    public void setPresened(String presened) {
        this.presened = presened;
    }

    @Override
    public String toString() {
        return "Presence{" +
                "presenceID='" + presenceID + '\'' +
                ", lection=" + lection +
                ", student=" + student +
                ", presened='" + presened + '\'' +
                '}';
    }
}
