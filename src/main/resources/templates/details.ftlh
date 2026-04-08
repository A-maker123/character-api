<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Details</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!--CSS -->
  <link rel="stylesheet" href="/CSS/styles.css">
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
<main class="container my-4">
  <header class="text-center mb-4">
    <h1 class="display-5">${character.name}</h1>
    <p class="lead">Burglar, storyteller, and the most unlikely hero in Middle earth.</p>
  </header>

  <section class="row g-4 align-items-start">
    <div class="col-lg-5">
      <div class="card shadow-sm">
        <img src="/Images/Bilbo2.jpeg" class="card-img-top" alt="Bilbo Baggins" style="object-fit: cover; height: 100%;">
        <div class="card-body">
          <p class="mb-1"><strong>Universe:</strong> The Hobbit</p>
          <p class="mb-1"><strong>Species:</strong> Hobbit</p>
          <p class="mb-1"><strong>Role:</strong> Burglar turned hero</p>
          <p class="mb-0"><strong>Power level:</strong> Medium</p>
        </div>
      </div>
    </div>

    <div class="col-lg-7">
      <div class="card shadow-sm">
        <div class="card-body">
          <h2 class="h4">Backstory</h2>
          <p>
            Bilbo Baggins lives a quiet and predictable life in the Shire until Gandalf and a company of dwarves
            show up at his door. He is recruited as the group’s “burglar” on a quest to reclaim the dwarven
            homeland of Erebor from the dragon Smaug. The journey forces Bilbo to adapt, take risks, and discover
            bravery he did not know he had.
          </p>

          <h2 class="h4 mt-4">Abilities and skills</h2>
          <ul>
            <li><strong>Stealth:</strong> surprisingly good at sneaking when it counts</li>
            <li><strong>Quick thinking:</strong> talks his way out of trouble and makes clever bargains</li>
            <li><strong>Courage under pressure:</strong> grows into a leader in critical moments</li>
            <li><strong>Ring bearer:</strong> gains invisibility through the One Ring, with consequences</li>
          </ul>

          <h2 class="h4 mt-4">First appearance</h2>
          <p class="mb-2">
            <strong>The Hobbit</strong> by J. R. R. Tolkien, first published in 1937.
          </p>

          <h2 class="h4 mt-4">Personality traits</h2>
          <div class="d-flex flex-wrap gap-2">
            <span class="badge text-bg-secondary">Clever</span>
            <span class="badge text-bg-secondary">Loyal</span>
            <span class="badge text-bg-secondary">Anxious but brave</span>
            <span class="badge text-bg-secondary">Curious</span>
            <span class="badge text-bg-secondary">Comfort loving</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <div class="text-center mt-4">
    <a class="btn btn-dark" href="index.html">Back to Gallery</a>
  </div>
</main>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
