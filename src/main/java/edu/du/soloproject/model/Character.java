package edu.du.soloproject.model;

public class Character {
    private Integer id;
    private String name;
    private String role;
    private String difficulty;
    private String description;
    private String imageUrl;  // DB의 image_url 컬럼과 매핑

    // 기본 생성자
    public Character() {
    }

    // Getter와 Setter
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    // 생성자
    public Character(String name, String role, String difficulty, String description, String imageUrl) {
        this.name = name;
        this.role = role;
        this.difficulty = difficulty;
        this.description = description;
        this.imageUrl = imageUrl;
    }

    public Character(Integer id, String name, String role, String difficulty, String description, String imageUrl) {
        this.id = id;
        this.name = name;
        this.role = role;
        this.difficulty = difficulty;
        this.description = description;
        this.imageUrl = imageUrl;
    }
}