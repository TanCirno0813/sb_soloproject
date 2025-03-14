package edu.du.soloproject.service;
import edu.du.soloproject.model.Character;
import edu.du.soloproject.mapper.CharacterRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;


    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {

        return characterRepository.getAllCharacters();
    }

    public void addCharacter(Character character) {
        characterRepository.insertCharacter(character);
    }

    public void updateCharacter(Character character) {
        characterRepository.updateCharacter(character);
    }

    public void deleteCharacter(int id) {
        characterRepository.deleteCharacter(id);
    }
}