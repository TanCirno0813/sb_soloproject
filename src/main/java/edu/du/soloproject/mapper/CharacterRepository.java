package edu.du.soloproject.mapper;
import edu.du.soloproject.model.Character;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface CharacterRepository {
    @Select("SELECT * FROM characters")
    List<Character> getAllCharacters();

    @Insert("INSERT INTO characters (name, role, di fficulty, description, image_url) VALUES (#{name}, #{role}, #{difficulty}, #{description}, #{imageUrl})")
    void insertCharacter(Character character);

    @Update("UPDATE characters SET name=#{name}, role=#{role}, difficulty=#{difficulty}, description=#{description}, image_url=#{imageUrl} WHERE id=#{id}")
    void updateCharacter(Character character);

    @Delete("DELETE FROM characters WHERE id=#{id}")
    void deleteCharacter(int id);
}
