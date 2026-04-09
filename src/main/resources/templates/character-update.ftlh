<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
    </nav>

    <h1>Update Character</h1>

    <form action="/characters/update" method="post">
        <input type="hidden" name="characterId" value="${character.characterId?c}">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${character.name}" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required>${character.description}</textarea>

        <label for="universe">Universe:</label>
        <input type="text" id="universe" name="universe" value="${character.universe}" required>

        <label for="species">Species:</label>
        <input type="text" id="species" name="species" value="${character.species}" required>

        <button type="submit">Save Changes</button>
    </form>
</body>
</html>