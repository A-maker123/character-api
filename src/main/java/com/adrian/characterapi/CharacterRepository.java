package com.adrian.characterapi;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverseIgnoreCase(String universe);

    List<Character> findByNameContainingIgnoreCase(String name);

    List<Character> findBySpeciesIgnoreCase(String species);
}