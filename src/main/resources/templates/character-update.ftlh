<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${title}</title>

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

  <main class="container my-4" style="max-width: 900px;">
    <header class="text-center mb-4">
      <h1 class="display-5">Update Character</h1>
      <p class="lead">Edit the character information below.</p>
    </header>

    <div class="card shadow-sm">
      <div class="card-body">
        <form action="/characters/update" method="post" enctype="multipart/form-data">
          <input type="hidden" name="characterId" value="${character.characterId?c}">

          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label">Character Name</label>
              <input type="text" class="form-control" name="name" value="${character.name}" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Universe</label>
              <input type="text" class="form-control" name="universe" value="${character.universe}" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Species</label>
              <input type="text" class="form-control" name="species" value="${character.species}" required>
            </div>

            <div class="col-12">
              <label class="form-label">Upload New Image</label>
              <input type="file" class="form-control" name="imageFile" accept="image/*">
            </div>

            <div class="col-12">
              <label class="form-label">Fallback Hardcoded Image Path</label>
              <input type="text" class="form-control" name="imageUrl" value="${character.imageUrl!}" placeholder="/Images/default-character.jpg">
              <div class="form-text">
                Leave this blank if the character will use an uploaded image.
              </div>
            </div>

            <div class="col-12">
              <label class="form-label">Description</label>
              <textarea class="form-control" name="description" rows="4" required>${character.description}</textarea>
            </div>

            <div class="col-12 d-flex gap-2">
              <button type="submit" class="btn btn-dark">Update Character</button>
              <a href="/characters/${character.characterId?c}" class="btn btn-outline-secondary">Cancel</a>
            </div>
          </div>
        </form>
      </div>
    </div>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>