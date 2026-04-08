package com.adrian.characterapi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller

    @RequestMapping("/charcacters")

public class CharacterUIController {

  
    @Autowired
    private CharacterService characterService;
  @GetMapping("/about")
    public String about(){
return "about";
    }
@GetMapping({ "/", "" })
public String getAllCharacters(Model model){
    model.addAttribute("charactersList", characterService.getAllCharacters());
    return "index";


}
    @GetMapping("/charactersIndex")
    public String getCharacterById (@PathVariable Long characterId, Model model){
        Character character = characterService.getCharacterById(characterId);
        if(character != null){
            model.addAttribute("character", character);
            return "details";
     }
        else{ return "about";
        }
    } 
    @GetMapping("/new")
public String showForm(){
    return "new-character";
}





}
