package edu.du.soloproject.model;

public class Character {
    private int id;
    private String name;
    private String role;
    private String difficulty;
    private String description;
    private String imageUrl;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Character(int id, String name, String role, String difficulty, String description, String imageUrl) {
        this.id = id;
        this.name = name;
        this.role = role;
        this.difficulty = difficulty;
        this.description = description;
        this.imageUrl = imageUrl;
    }




}