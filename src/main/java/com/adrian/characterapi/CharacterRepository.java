package com.adrian.characterapi;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverseIgnoreCase(String universe);

    @Query(value = "SELECT * FROM characters WHERE LOWER(name) LIKE LOWER(CONCAT('%', ?1, '%'))", nativeQuery = true)
    List<Character> findByNameContainingCustom(String name);


    List<Character> findBySpeciesIgnoreCase(String species);
}