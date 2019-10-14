package com.example.fate_explorer.basic_class;

public class Servent_neat {
    private String servent_name;
    private String url;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServent_name() {
        return servent_name;
    }

    public void setServent_name(String servent_name) {
        this.servent_name = servent_name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Servent_neat(String servent_name, String url) {
        this.servent_name = servent_name;
        this.url = url;
    }

    public Servent_neat(String servent_name, String url, int id) {
        this.servent_name = servent_name;
        this.url = url;
        this.id = id;
    }
    public Servent_neat(){

    }
}

