<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Middle-earth Gallery</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- CSS -->
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

  <!-- Page content  -->
<main class="container my-4">
  <header class="text-center mb-4">
    <h1 class="display-5">The Hobbit Character Gallery</h1>
    <p class="lead">
      A small collection of characters from Tolkien’s world. Use the search to filter by name, role, or species.
    </p>
  </header>

  <!-- Search -->
  <div class="row g-2 align-items-center mb-4">
    <div class="col-md-8">
      <input id="searchInput" type="text" class="form-control"
             placeholder="Search by name, role, species, or universe...">
    </div>
    <div class="col-md-4">
      <select id="categorySelect" class="form-select">
        <option value="all" selected>All categories</option>
        <option value="hobbit">Hobbits</option>
        <option value="wizard">Wizard</option>
        <option value="elf">Elf</option>
        <option value="dwarf">Dwarf</option>
      </select>
    </div>
  </div>

  <!-- Gallery -->
  <section class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4" id="cardGrid">

    <!-- Bilbo -->

    <# list characterLists as character>
    <div class="col character-card" data-tags="bilbo baggins hobbit burglar hero the hobbit">
      <div class="card h-100 shadow-sm">
        <img src="/Images/Bilbo.jpeg" 
            class="card-img-top" alt="Bilbo Baggins">
        <div class="card-body">
          <h5 class="card-title">Bilbo Baggins</h5>
          <p class="card-text mb-2">
            <strong>Universe:</strong> The Hobbit<br>
            <strong>Role:</strong> Burglar turned hero<br>
            <strong>Species:</strong> Hobbit<br>
            <strong>Power level:</strong> Medium
          </p>
          <p class="card-text">
            A comfort-loving hobbit pulled into an unexpected journey who discovers courage and wit.
          </p>
        </div>
        <div class="card-footer bg-transparent border-0 pb-3 px-3">
          <a class="btn btn-outline-dark w-100" href="details.html">View details</a>
        </div>
      </div>
    </div>
    <# /list>
    <!-- Gandalf -->
    <div class="col character-card" data-tags="gandalf wizard maia guide the hobbit">
      <div class="card h-100 shadow-sm">
        <img src="/Images/Gandalf.jpeg"
             class="card-img-top" alt="Gandalf">
        <div class="card-body">
          <h5 class="card-title">Gandalf</h5>
          <p class="card-text mb-2">
            <strong>Universe:</strong> The Hobbit<br>
            <strong>Role:</strong> Wizard and guide<br>
            <strong>Species:</strong> Maia<br>
            <strong>Power level:</strong> Very high
          </p>
          <p class="card-text">
            A wise and strategic mentor who pushes others toward bravery and big choices.
          </p>
        </div>
        <div class="card-footer bg-transparent border-0 pb-3 px-3">
          <a class="btn btn-outline-dark w-100" href="details.html">View details</a>
        </div>
      </div>
    </div>

    <!-- Elrond -->
    <div class="col character-card" data-tags="elrond elf rivendell loremaster the hobbit">
      <div class="card h-100 shadow-sm">
        <img src="/Images/Elrond2.webp" class="card-img-top" alt="Elrond">
        <div class="card-body">
          <h5 class="card-title">Elrond</h5>
          <p class="card-text mb-2">
            <strong>Universe:</strong> The Hobbit<br>
            <strong>Role:</strong> Lord of Rivendell<br>
            <strong>Species:</strong> Elf<br>
            <strong>Power level:</strong> High
          </p>
          <p class="card-text">
            Ancient and wise, offering counsel and knowledge that helps the quest survive.
          </p>
        </div>
        <div class="card-footer bg-transparent border-0 pb-3 px-3">
          <a class="btn btn-outline-dark w-100" href="details.html">View details</a>
        </div>
      </div>
    </div>

    <!-- Thorin -->
    <div class="col character-card" data-tags="thorin oakenshield dwarf king erebor the hobbit">
      <div class="card h-100 shadow-sm">
        <img src="/Images/Thorin.jpeg"
             class="card-img-top" alt="Thorin Oakenshield">
        <div class="card-body">
          <h5 class="card-title">Thorin Oakenshield</h5>
          <p class="card-text mb-2">
            <strong>Universe:</strong> The Hobbit<br>
            <strong>Role:</strong> Dwarf king in exile<br>
            <strong>Species:</strong> Dwarf<br>
            <strong>Power level:</strong> High
          </p>
          <p class="card-text">
            Proud and determined leader set on reclaiming Erebor and restoring his people.
          </p>
        </div>
        <div class="card-footer bg-transparent border-0 pb-3 px-3">
          <a class="btn btn-outline-dark w-100" href="details.html">View details</a>
        </div>
      </div>
    </div>

    <!-- Pippin Took -->
    <div class="col character-card" data-tags="pippin took hobbit companion adventurous shire">
      <div class="card h-100 shadow-sm">
        <img src="/Images/Pippin Took.jpg"
             class="card-img-top" alt="Peregrin Took">
        <div class="card-body">
          <h5 class="card-title">Peregrin “Pippin” Took</h5>
          <p class="card-text mb-2">
            <strong>Universe:</strong> Tolkien’s world<br>
            <strong>Role:</strong> Adventurous companion<br>
            <strong>Species:</strong> Hobbit<br>
            <strong>Power level:</strong> Low–Medium
          </p>
          <p class="card-text">
            A Took with curiosity and chaos energy who grows into real courage.
          </p>
        </div>
        <div class="card-footer bg-transparent border-0 pb-3 px-3">
          <a class="btn btn-outline-dark w-100" href="details.html">View details</a>
        </div>
      </div>
    </div>

  </section>

  <p id="noResults" class="text-center mt-4 d-none">No characters match your search.</p>
</main>

<script>
  const searchInput = document.getElementById("searchInput");
  const categorySelect = document.getElementById("categorySelect");
  const cards = Array.from(document.querySelectorAll(".character-card"));
  const noResults = document.getElementById("noResults");

  function matchesCategory(card, category) {
    if (category === "all") return true;
    const tags = card.dataset.tags.toLowerCase();
    return tags.includes(category);
  }

  function filterCards() {
    const query = searchInput.value.trim().toLowerCase();
    const category = categorySelect.value;

    let visibleCount = 0;

    cards.forEach(card => {
      const tags = card.dataset.tags.toLowerCase();
      const matchText = tags.includes(query);
      const matchCategory = matchesCategory(card, category);

      const show = (query === "" ? true : matchText) && matchCategory;
      card.classList.toggle("d-none", !show);

      if (show) visibleCount++;
    });

    noResults.classList.toggle("d-none", visibleCount !== 0);
  }

  searchInput.addEventListener("input", filterCards);
  categorySelect.addEventListener("change", filterCards);
</script>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
