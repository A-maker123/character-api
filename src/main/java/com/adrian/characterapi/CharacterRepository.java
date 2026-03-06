package com.adrian.characterapi;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverseIgnoreCase(String universe);

    List<Character> findByNameContainingIgnoreCase(String name);
}