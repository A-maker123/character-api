package com.adrian.characterapi;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "characters")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, length = 2000)
    private String description;

    @Column(nullable = false)
    private String universe;

    @Column(nullable = false)
    private String species;

    @Column
    private String imageUrl;

    @Column
    private String uploadedImageName;

    public Character() {
    }

    public Character(String name, String description, String universe, String species, String imageUrl) {
        this.name = name;
        this.description = description;
        this.universe = universe;
        this.species = species;
        this.imageUrl = imageUrl;
    }

    public Long getCharacterId() {
        return characterId;
    }

    public void setCharacterId(Long characterId) {
        this.characterId = characterId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUniverse() {
        return universe;
    }

    public void setUniverse(String universe) {
        this.universe = universe;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }
    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    public String getUploadedImageName() {
        return uploadedImageName;
    }

    public void setUploadedImageName(String uploadedImageName) {
        this.uploadedImageName = uploadedImageName;
    }
    @Transient
public String getDisplayImagePath() {
    if (uploadedImageName != null && !uploadedImageName.isBlank()) {
        return "/uploads/" + uploadedImageName;
    }

    if (imageUrl != null && !imageUrl.isBlank()) {
        return imageUrl;
    }

    if (name != null) {
        switch (name.trim()) {
            case "Bilbo Baggins" -> {
                return "/Images/Bilbo.jpeg";
            }
            case "Gandalf" -> {
                return "/Images/Gandalf.jpeg";
            }
            case "Elrond" -> {
                return "/Images/Elrond2.webp";
            }
            case "Thorin Oakenshield" -> {
                return "/Images/Thorin.jpeg";
            }
            case "Peregrin Took" -> {
                return "/Images/Pippin Took.jpg";
            }
            case "Aragorn" -> {
                return "/Images/Aragorn.jpeg";
            }
        }
    }

    return "/Images/default-character.jpg";
}



}
