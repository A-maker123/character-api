<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Middle-earth Gallery</title>

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
      <h1 class="display-5">The Hobbit Character Gallery</h1>
      <p class="lead">
        A small collection of characters from Tolkien’s world. Use the search to filter by name, universe, species, or description.
      </p>
    </header>

    <div class="row g-2 align-items-center mb-4">
      <div class="col-md-8">
        <input id="searchInput" type="text" class="form-control"
               placeholder="Search by name, universe, species, or description...">
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

    <section class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4" id="cardGrid">

      <#list characterList as character>
      <div class="col character-card"
           data-tags="${character.name?lower_case} ${character.universe?lower_case} ${character.species?lower_case} ${character.description?lower_case}">
        <div class="card h-100 shadow-sm">

          <img src="${character.displayImagePath}" class="card-img-top" alt="${character.name}">

          <div class="card-body">
            <h5 class="card-title">${character.name}</h5>
            <p class="card-text mb-2">
              <strong>Universe:</strong> ${character.universe}<br>
              <strong>Species:</strong> ${character.species}
            </p>
            <p class="card-text">${character.description}</p>
          </div>

          <div class="card-footer bg-transparent border-0 pb-3 px-3">
            <a class="btn btn-outline-dark w-100"
               href="/characters/${character.characterId?c}">
               View Details
            </a>
          </div>

        </div>
      </div>
      </#list>

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

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>