package com.politechnika.utlis;

import com.mongodb.Mongo;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.Morphia;

import java.net.UnknownHostException;

/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 23.11.13
 * Time: 21:07
 * To change this template use File | Settings | File Templates.
 */
public class MongoDBDataStore {
    private static final Logger LOGGER = Logger.getLogger(MongoDBDataStore.class);
    private static Datastore ds;
    static {
        try {
            ds = new Morphia().createDatastore(new Mongo(), "msm");
        } catch (UnknownHostException e) {
            LOGGER.log(Level.ERROR, "Connection problem with database");
        }
    }

    public static Datastore getDs() {
        return ds;
    }
}
