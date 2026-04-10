<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add a Character</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!--CSS -->
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
    </div></nav>

  <main class="container my-4" style="max-width: 900px;">
    <header class="text-center mb-4">
      <h1 class="display-5">Add a New Character</h1>
      <p class="lead">Fill out the form below to add a new character.</p>
    </header>

    <div class="card shadow-sm">
      <div class="card-body">
        <form action="/characters/create" method="post" enctype="multipart/form-data">
          <div class="row g-3">

            <div class="col-md-6">
              <label for="name" class="form-label">Character Name</label>
              <input type="text" class="form-control" id="name" name="name" required>
            </div>

            <div class="col-md-6">
              <label for="universe" class="form-label">Universe</label>
              <input type="text" class="form-control" id="universe" name="universe" required>
            </div>

            <div class="col-md-6">
              <label for="species" class="form-label">Species</label>
              <input type="text" class="form-control" id="species" name="species" required>
            </div>
            <div class="col-12">
              <label for="imageFile" class="form-label">Upload Image</label>
              <input type="file" class="form-control" id="imageFile" name="imageFile" accept="image/*">
            </div>

            <div class="col-12">
              <label for="imageUrl" class="form-label">Fallback Hardcoded Image Path</label>
              <input type="text" class="form-control" id="imageUrl" name="imageUrl"
                     placeholder="/Images/default-character.jpg">
              <div class="form-text">Optional. Use this for older static images if no upload is chosen.</div>

            <div class="col-12">
              <label for="description" class="form-label">Description</label>
              <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
            </div>

            <div class="col-12 d-flex gap-2">
              <button type="submit" class="btn btn-dark">Submit</button>
              <button type="reset" class="btn btn-outline-secondary">Clear</button>
            </div>

          </div>
        </form>
      </div>
    </div>
  </main>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
