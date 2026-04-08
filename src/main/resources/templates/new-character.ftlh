<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add a Character</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!--CSS -->
  <link rel="stylesheet" href="CSS/styles.css">
</head>

<body>

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="index.html">Middle-earth Gallery</a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="mainNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="details.html">Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="new-character-form.html">Add a Character</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page content -->
 <main class="container my-4" style="max-width: 900px;">
  <header class="text-center mb-4">
    <h1 class="display-5">Add a New Character</h1>
    <p class="lead">Prototype form. Submissions are not saved.</p>
  </header>

  <div class="card shadow-sm">
    <div class="card-body">
      <form>
        <div class="row g-3">
          <div class="col-md-6">
            <label for="name" class="form-label">Character name</label>
            <input type="text" class="form-control" id="name" placeholder="Bilbo Baggins" required>
          </div>

          <div class="col-md-6">
            <label for="universe" class="form-label">Universe</label>
            <input type="text" class="form-control" id="universe" placeholder="The Hobbit" required>
          </div>

          <div class="col-md-6">
            <label for="role" class="form-label">Role</label>
            <input type="text" class="form-control" id="role" placeholder="Burglar turned hero" required>
          </div>

          <div class="col-md-6">
            <label for="species" class="form-label">Species</label>
            <input type="text" class="form-control" id="species" placeholder="Hobbit">
          </div>

          <div class="col-md-6">
            <label for="power" class="form-label">Power level</label>
            <select id="power" class="form-select">
              <option selected>Choose one</option>
              <option>Low</option>
              <option>Medium</option>
              <option>High</option>
              <option>Very high</option>
            </select>
          </div>

          <div class="col-md-6">
            <label for="imageUrl" class="form-label">Image URL</label>
            <input type="url" class="form-control" id="imageUrl" placeholder="https://example.com/image.jpg" required>
          </div>

          <div class="col-12">
            <label for="description" class="form-label">Short description</label>
            <textarea class="form-control" id="description" rows="4"
              placeholder="Write a short summary of the character..." required></textarea>
          </div>

          <div class="col-12 d-flex gap-2">
            <button type="submit" class="btn btn-dark">Submit</button>
            <button type="reset" class="btn btn-outline-secondary">Clear</button>
          </div>

          <p class="text-muted mt-2 mb-0">
            This is a static prototype. The form does not save data.
          </p>
        </div>
      </form>
    </div>
  </div>
</main>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
