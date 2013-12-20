/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.model;

import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;

/**
 *
 * @author l.lis
 */
@Entity("User")
@XmlRootElement
public class Administrator extends User{

    public Administrator() {
    }

    public Administrator(ObjectId objectId, String username, String password, String role, String firstName, String secName, String email, String salt, List<AdressE> adresses, List<PhoneE> phoneses) {
        super(objectId, username, password, role, firstName, secName, email, salt, adresses, phoneses);
    }
    
}
