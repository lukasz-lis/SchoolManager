package com.politechnika.model;

import org.mongodb.morphia.annotations.Embedded;

/**
 * Model class.
 * User: Łukasz
 * Date: 18.11.13
 * Time: 21:23
 */

@Embedded
public class AdressE {
    
    private String city;
    private String streetName;
    private String streetNumber;
    private String localNumber;
    private String postCode;

    public AdressE() {
    }
    
    public AdressE(String streetName, String streetNumber, String localNumber, String postCode) {
        this.streetName = streetName;
        this.streetNumber = streetNumber;
        this.localNumber = localNumber;
        this.postCode = postCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
        
    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getStreetNumber() {
        return streetNumber;
    }

    public void setStreetNumber(String streetNumber) {
        this.streetNumber = streetNumber;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getLocalNumber() {
        return localNumber;
    }

    public void setLocalNumber(String localNumber) {
        this.localNumber = localNumber;
    }
}

