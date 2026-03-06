package com.adrian.characterapi;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/characters")
@CrossOrigin(origins = "*")
public class CharacterApiController {

    private final CharacterService characterService;

    public CharacterApiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping
    public ResponseEntity<List<Character>> getAllCharacters() {
        return ResponseEntity.ok(characterService.getAllCharacters());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
        return ResponseEntity.ok(characterService.getCharacterById(id));
    }

    @PostMapping
    public ResponseEntity<Character> addCharacter(@RequestBody Character character) {
        Character savedCharacter = characterService.addCharacter(character);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedCharacter);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Character> updateCharacter(@PathVariable Long id, @RequestBody Character updatedCharacter) {
        return ResponseEntity.ok(characterService.updateCharacter(id, updatedCharacter));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/filter")
    public ResponseEntity<List<Character>> getCharactersByField(
            @RequestParam String field,
            @RequestParam String value) {
        return ResponseEntity.ok(characterService.getCharactersByField(field, value));
    }

    @GetMapping("/search")
    public ResponseEntity<List<Character>> searchCharactersByName(@RequestParam String name) {
        return ResponseEntity.ok(characterService.searchCharactersByName(name));
    }
}