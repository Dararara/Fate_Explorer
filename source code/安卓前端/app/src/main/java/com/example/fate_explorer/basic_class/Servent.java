package com.example.fate_explorer.basic_class;

import java.util.ArrayList;

public class Servent {
    private String Servent_name, Servent_name_jan, Servent_name_Eng;
    private int height, weight;
    private String gender;
    private int id;

    public String getServent_name() {
        return Servent_name;
    }

    public String getServent_name_jan() {
        return Servent_name_jan;
    }

    public String getServent_name_Eng() {
        return Servent_name_Eng;
    }

    public int getHeight() {
        return height;
    }

    public int getWeight() {
        return weight;
    }

    public String getGender() {
        return gender;
    }

    public String getStrength() {
        return strength;
    }

    public String getEndurance() {
        return endurance;
    }

    public String getAgility() {
        return agility;
    }

    public String getMana() {
        return mana;
    }

    public String getLuck() {
        return luck;
    }

    public String getNoble_phantasm() {
        return noble_phantasm;
    }

    public String getServent_class() {
        return servent_class;
    }

    public String getIllustrator() {
        return illustrator;
    }

    public String getAlignment() {
        return alignment;
    }

    public String getVoice_actor() {
        return voice_actor;
    }

    public String getRegion() {
        return region;
    }

    public String getOrigin() {
        return origin;
    }

    public String getPrototype() {
        return prototype;
    }

    public String getFull_picture() {
        return full_picture;
    }

    public String getCraft_name() {
        return craft_name;
    }

    public String getCraft_description() {
        return craft_description;
    }

    public String getCraft_src() {
        return craft_src;
    }

    public ArrayList<String> getBonds() {
        return bonds;
    }

    private String strength, endurance, agility, mana, luck, noble_phantasm;
    private String servent_class, illustrator, alignment,voice_actor;
    private String region, origin, prototype, full_picture;
    private String craft_name, craft_description, craft_src;
    private ArrayList<String> bonds;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setServent_name(String servent_name) {
        Servent_name = servent_name;
    }

    public void setServent_name_jan(String servent_name_jan) {
        Servent_name_jan = servent_name_jan;
    }

    public void setServent_name_Eng(String servent_name_Eng) {
        Servent_name_Eng = servent_name_Eng;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setStrength(String strength) {
        this.strength = strength;
    }

    public void setEndurance(String endurance) {
        this.endurance = endurance;
    }

    public void setAgility(String agility) {
        this.agility = agility;
    }

    public void setMana(String mana) {
        this.mana = mana;
    }

    public void setLuck(String luck) {
        this.luck = luck;
    }

    public void setNoble_phantasm(String noble_phantasm) {
        this.noble_phantasm = noble_phantasm;
    }

    public void setServent_class(String servent_class) {
        this.servent_class = servent_class;
    }

    public void setIllustrator(String illustrator) {
        this.illustrator = illustrator;
    }

    public void setAlignment(String alignment) {
        this.alignment = alignment;
    }

    public void setVoice_actor(String voice_actor) {
        this.voice_actor = voice_actor;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public void setPrototype(String prototype) {
        this.prototype = prototype;
    }

    public void setFull_picture(String full_picture) {
        this.full_picture = full_picture;
    }

    public void setCraft_name(String craft_name) {
        this.craft_name = craft_name;
    }

    public void setCraft_description(String craft_description) {
        this.craft_description = craft_description;
    }

    public void setCraft_src(String craft_src) {
        this.craft_src = craft_src;
    }

    public void setBonds(ArrayList<String> bonds) {
        this.bonds = bonds;
    }

    public Servent(String servent_name, String servent_name_jan, String servent_name_Eng, int height, int weight, String gender, String strength, String endurance, String agility, String mana, String luck, String noble_phantasm, String servent_class, String illustrator, String alignment, String voice_actor, String region, String origin, String prototype, String full_picture, String craft_name, String craft_description, String craft_src, ArrayList<String> bonds) {
        Servent_name = servent_name;
        Servent_name_jan = servent_name_jan;
        Servent_name_Eng = servent_name_Eng;
        this.height = height;
        this.weight = weight;
        this.gender = gender;
        this.strength = strength;
        this.endurance = endurance;
        this.agility = agility;
        this.mana = mana;
        this.luck = luck;
        this.noble_phantasm = noble_phantasm;
        this.servent_class = servent_class;
        this.illustrator = illustrator;
        this.alignment = alignment;
        this.voice_actor = voice_actor;
        this.region = region;
        this.origin = origin;
        this.prototype = prototype;
        this.full_picture = full_picture;
        this.craft_name = craft_name;
        this.craft_description = craft_description;
        this.craft_src = craft_src;
        this.bonds = bonds;
    }

    public Servent(){

    }
}

