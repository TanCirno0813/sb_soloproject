package edu.du.soloproject.controller;

import edu.du.soloproject.service.CharacterService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/characters")
public class CharacterController {
    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // 캐릭터 목록 조회
    @GetMapping
    public String listCharacters(Model model) {
        List<Character> characters = characterService.getAllCharacters();
        model.addAttribute("characters", characters);
        return "characters";
    }

    // 캐릭터 추가
    @PostMapping("/add")
    public String addCharacter(@ModelAttribute Character character) {
        characterService.addCharacter(character);
        return "redirect:/characters";
    }

    // 캐릭터 삭제
    @PostMapping("/delete")
    public String deleteCharacter(@RequestParam int id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }
}