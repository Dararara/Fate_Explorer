package com.example.fate_explorer.basic_class;

public class Pedia {
    private int pedia_id;
    private String pedia_name;
    private String pedia_url;

    public Pedia(int pedia_id, String pedia_name, String pedia_url) {
        this.pedia_id = pedia_id;
        this.pedia_name = pedia_name;
        this.pedia_url = pedia_url;
    }

    public int getPedia_id() {
        return pedia_id;
    }

    public void setPedia_id(int pedia_id) {
        this.pedia_id = pedia_id;
    }

    public String getPedia_name() {
        return pedia_name;
    }

    public void setPedia_name(String pedia_name) {
        this.pedia_name = pedia_name;
    }

    public String getPedia_url() {
        return pedia_url;
    }

    public void setPedia_url(String pedia_url) {
        this.pedia_url = pedia_url;
    }
}
