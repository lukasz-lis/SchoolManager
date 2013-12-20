package com.politechnika.model;

import javax.xml.bind.annotation.XmlRootElement;
import org.mongodb.morphia.annotations.Embedded;

/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 19.11.13
 * Time: 20:25
 * To change this template use File | Settings | File Templates.
 */
@Embedded
public class PhoneE {
  
    private String phoneNumber;
    private Boolean active;

    public PhoneE() {
    }

    public PhoneE(String phoneNumber, Boolean active) {
        this.phoneNumber = phoneNumber;
        this.active = active;
    }
    
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }
}
