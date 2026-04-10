<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Details</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/CSS/styles.css">
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="/characters">Middle-earth Gallery</a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="mainNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="/characters">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/characters/create">Add a Character</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-4">
    <header class="text-center mb-4">
      <h1 class="display-5">${character.name}</h1>
      <p class="lead">${character.description}</p>
    </header>

    <section class="row g-4 align-items-start">
      <div class="col-lg-5">
        <div class="card shadow-sm">
          <img src="${character.displayImagePath}" class="card-img-top" alt="${character.name}">

          <div class="card-body">
            <p class="mb-1"><strong>ID:</strong> ${character.characterId?c}</p>
            <p class="mb-1"><strong>Universe:</strong> ${character.universe}</p>
            <p class="mb-1"><strong>Species:</strong> ${character.species}</p>
          </div>
        </div>
      </div>

      <div class="col-lg-7">
        <div class="card shadow-sm">
          <div class="card-body">
            <h2 class="h4">Character Description</h2>
            <p>${character.description}</p>
          </div>
        </div>
      </div>
    </section>

    <div class="text-center mt-4">
      <a class="btn btn-dark" href="/characters">Back to Gallery</a>
      <a class="btn btn-outline-primary" href="/characters/updateForm/${character.characterId?c}">Edit Character</a>
      <a class="btn btn-outline-danger" href="/characters/delete/${character.characterId?c}"
         onclick="return confirm('Are you sure you want to delete this character?');">
         Delete Character
      </a>
    </div>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>