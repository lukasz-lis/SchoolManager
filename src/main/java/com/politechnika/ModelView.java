package com.politechnika;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 07.12.13
 * Time: 15:51
 * To change this template use File | Settings | File Templates.
 */
public class ModelView {
    private final String name;
    private final Map<String, Object> attributes = new HashMap<String, Object>();

    public ModelView(final String name) {
        this.name = name;
    }

    public ModelView set(final String name, final Object value) {
        attributes.put(name, value);
        return this;
    }

    public Map<String, Object> attributes() {
        return attributes;
    }

    public String template() {
        return name;
    }
}
