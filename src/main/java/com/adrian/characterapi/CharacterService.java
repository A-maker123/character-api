package com.adrian.characterapi;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;
    private static final Path UPLOAD_DIR = Paths.get("uploads").toAbsolutePath().normalize();

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Character getCharacterById(Long id) {
        return characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));
    }

    public Character addCharacter(Character character) {
        normalizeImageFields(character);
        return characterRepository.save(character);
    }

    public Character addCharacter(Character character, MultipartFile imageFile) {
        normalizeImageFields(character);
        handleImageUpload(character, imageFile);
        return characterRepository.save(character);
    }

    public Character updateCharacter(Long id, Character updatedCharacter) {
        Character existingCharacter = characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));

        applyCharacterUpdates(existingCharacter, updatedCharacter);
        return characterRepository.save(existingCharacter);
    }

    public Character updateCharacter(Long id, Character updatedCharacter, MultipartFile imageFile) {
        Character existingCharacter = characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));

        applyCharacterUpdates(existingCharacter, updatedCharacter);

        if (imageFile != null && !imageFile.isEmpty()) {
            deleteUploadedImageIfPresent(existingCharacter.getUploadedImageName());
            handleImageUpload(existingCharacter, imageFile);
        } else if (StringUtils.hasText(updatedCharacter.getImageUrl())) {
            deleteUploadedImageIfPresent(existingCharacter.getUploadedImageName());
            existingCharacter.setUploadedImageName(null);
            existingCharacter.setImageUrl(updatedCharacter.getImageUrl().trim());
        }

        return characterRepository.save(existingCharacter);
    }

    public void deleteCharacter(Long id) {
        Character existingCharacter = characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));

        deleteUploadedImageIfPresent(existingCharacter.getUploadedImageName());
        characterRepository.delete(existingCharacter);
    }

    public List<Character> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingCustom(name);
    }

    public List<Character> getCharactersByField(String field, String value) {
        return switch (field.toLowerCase()) {
            case "universe" -> characterRepository.findByUniverseIgnoreCase(value);
            case "species" -> characterRepository.findBySpeciesIgnoreCase(value);
            default -> throw new IllegalArgumentException("Invalid filter field: " + field);
        };
    }

    private void applyCharacterUpdates(Character existingCharacter, Character updatedCharacter) {
        existingCharacter.setName(updatedCharacter.getName());
        existingCharacter.setDescription(updatedCharacter.getDescription());
        existingCharacter.setUniverse(updatedCharacter.getUniverse());
        existingCharacter.setSpecies(updatedCharacter.getSpecies());

        if (StringUtils.hasText(updatedCharacter.getImageUrl())) {
            existingCharacter.setImageUrl(updatedCharacter.getImageUrl().trim());
        }
    }

    private void normalizeImageFields(Character character) {
        if (character.getImageUrl() != null) {
            character.setImageUrl(character.getImageUrl().trim());
            if (character.getImageUrl().isEmpty()) {
                character.setImageUrl(null);
            }
        }

        if (character.getUploadedImageName() != null) {
            character.setUploadedImageName(character.getUploadedImageName().trim());
            if (character.getUploadedImageName().isEmpty()) {
                character.setUploadedImageName(null);
            }
        }
    }

    private void handleImageUpload(Character character, MultipartFile imageFile) {
        if (imageFile == null || imageFile.isEmpty()) {
            return;
        }

        try {
            Files.createDirectories(UPLOAD_DIR);

            String originalFileName = StringUtils.cleanPath(imageFile.getOriginalFilename());
            String extension = "";

            if (originalFileName != null && originalFileName.contains(".")) {
                extension = originalFileName.substring(originalFileName.lastIndexOf('.'));
            }

            String fileName = UUID.randomUUID() + extension;
            Path filePath = UPLOAD_DIR.resolve(fileName);

            try (InputStream inputStream = imageFile.getInputStream()) {
                Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
            }

            character.setUploadedImageName(fileName);
            character.setImageUrl(null);

        } catch (IOException e) {
            throw new RuntimeException("Failed to upload image", e);
        }
    }

    private void deleteUploadedImageIfPresent(String uploadedImageName) {
        if (!StringUtils.hasText(uploadedImageName)) {
            return;
        }

        try {
            Files.deleteIfExists(UPLOAD_DIR.resolve(uploadedImageName));
        } catch (IOException e) {
            throw new RuntimeException("Failed to delete image file", e);
        }
    }
}
