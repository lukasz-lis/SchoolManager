package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

/**
 * Created by Łukasz on 31.12.13.
 */
@XmlRootElement
@Entity("User")
public class Care extends User {
    public Care() {
    }

    public Care(ObjectId objectId, String username, String password, String role, String firstName, String secName, String email, String salt, List<AdressE> adresses, List<PhoneE> phoneses) {
        super(objectId, username, password, role, firstName, secName, email, salt, adresses, phoneses);
    }
}

