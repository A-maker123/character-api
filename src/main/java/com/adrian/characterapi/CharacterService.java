package com.adrian.characterapi;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;

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
        return characterRepository.save(character);
    }

    public Character updateCharacter(Long id, Character updatedCharacter) {
        Character existingCharacter = characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));

        existingCharacter.setName(updatedCharacter.getName());
        existingCharacter.setDescription(updatedCharacter.getDescription());
        existingCharacter.setUniverse(updatedCharacter.getUniverse());
        existingCharacter.setSpecies(updatedCharacter.getSpecies());

        return characterRepository.save(existingCharacter);
    }

    public void deleteCharacter(Long id) {
        Character existingCharacter = characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));

        characterRepository.delete(existingCharacter);
    }

    public List<Character> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }

    public List<Character> getCharactersByField(String field, String value) {
        switch (field.toLowerCase()) {
            case "universe":
                return characterRepository.findByUniverseIgnoreCase(value);
            case "species":
                return characterRepository.findBySpeciesIgnoreCase(value);
            default:
                throw new IllegalArgumentException("Invalid filter field: " + field);
        }
    }
}