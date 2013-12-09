package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Embedded;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

import java.sql.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 19.11.13
 * Time: 20:33
 * To change this template use File | Settings | File Templates.
 */
@Embedded
public class ScheduleE {
    @Id
    private ObjectId objectId;
    private Date startDate;
    private Date endDate;
    private Integer duration;
    @Reference
    private Course course;

    public ObjectId getObjectId() {
        return objectId;
    }

    public void setObjectId(ObjectId objectId) {
        this.objectId = objectId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}
