package com.adrian.characterapi;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CharacterUIController {

    private final CharacterService characterService;

    public CharacterUIController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping({"/", "/characters"})
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        model.addAttribute("title", "All Characters");
        return "character-list";
    }

    @GetMapping("/characters/{id}")
    public String getCharacterById(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        model.addAttribute("title", "Character Details");
        return "character-details";
    }

    @GetMapping("/about")
    public String showAboutPage(Model model) {
        model.addAttribute("title", "About");
        return "about";
    }

    @GetMapping("/characters/create")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        model.addAttribute("title", "Create Character");
        return "character-create";
    }

    @PostMapping("/characters/create")
public String createCharacter(Character character,
                              @RequestParam(value = "imageFile", required = false) MultipartFile imageFile) {
    Character savedCharacter = characterService.addCharacter(character, imageFile);
    return "redirect:/characters/" + savedCharacter.getCharacterId();
}

    @GetMapping("/characters/updateForm/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        model.addAttribute("title", "Update Character");
        return "character-update";
    }

    @PostMapping("/characters/update")
public String updateCharacter(Character character,
                              @RequestParam(value = "imageFile", required = false) MultipartFile imageFile) {
    Character updatedCharacter = characterService.updateCharacter(character.getCharacterId(), character, imageFile);
    return "redirect:/characters/" + updatedCharacter.getCharacterId();
}

    @GetMapping("/characters/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }

    // optional but nice for extra credit
    @GetMapping("/characters/search")
    public String searchCharacters(@RequestParam String name, Model model) {
        model.addAttribute("characterList", characterService.searchCharactersByName(name));
        model.addAttribute("title", "Search Results");
        return "character-list";
    }

    @GetMapping("/characters/filter")
    public String filterCharacters(@RequestParam String field, @RequestParam String value, Model model) {
        model.addAttribute("characterList", characterService.getCharactersByField(field, value));
        model.addAttribute("title", "Filtered Characters");
        return "character-list";
    }

    @GetMapping("/hello")
@ResponseBody
public String hello() {
    return "UI controller is working";
}
}