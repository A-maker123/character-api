package com.adrian.characterapi;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverseIgnoreCase(String universe);
     @Query(value = "SELECT c.* FROM characters c WHERE c.universe = ?1", nativeQuery = true)
List<Character> findByUniverse(String universe);

  @Query(value = "SELECT s.* FROM characters s WHERE s.name like %?1%", nativeQuery = true)
  List<Character> findByName(String name);

    List<Character> findByNameContainingIgnoreCase(String name);
}