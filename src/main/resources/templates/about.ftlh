<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- CSS -->
  <link rel="stylesheet" href="/CSS/styles.css">
</head>

<body>

  <!-- Navigation Bar -->
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

  <!-- Page content -->
<main class="container my-4">
  <header class="text-center mb-4">
    <h1 class="display-5">About This Site</h1>
    <p class="lead">A static character gallery inspired by The Hobbit and Tolkien’s world.</p>
  </header>

  <section class="row g-4 align-items-center">
    <div class="col-lg-6">
      <div class="card shadow-sm">
            <img src="/Images/shire.jpeg" class="card-img-top" alt="The Shire">
      </div>
    </div>

    <div class="col-lg-6">
      <div class="card shadow-sm">
        <div class="card-body">
          <h2 class="h4">Why I chose this theme</h2>
          <p>
            I chose The Hobbit because the characters feel timeless and the story is easy to connect with.
            Bilbo’s journey is basically a regular person being forced to level up, which makes the character
            details fun to build and compare.
          </p>

          <h2 class="h4 mt-4">Design choices</h2>
          <ul class="mb-0">
            <li>I used Bootstrap to keep the layout clean and consistent across pages.</li>
            <li>The home page uses a grid of cards to make characters easy to scan.</li>
            <li>The search bar filters characters quickly without needing any backend.</li>
            <li>The navbar stays the same on every page to meet the usability requirement.</li>
          </ul>
        </div>
      </div>
    </div>
    </section>
</main>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
