const pokemon_count = 151
const pokemons = []

const getPokemon = async (num) => {
    const resp1 = await fetch("https://pokeapi.co/api/v2/pokemon/" + num, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
      },
    });
    if (!resp1.ok) {
      showError(resp1, num);
    }
    const pokemonData = await resp1.json();
    const pokemonDescriptionUrl = pokemonData['species']['url'];

    const resp2 = await fetch(pokemonDescriptionUrl, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
      },
    });
    if (!resp2.ok) {
      showError(resp2, num);
    }
    const pokemonDescriptionData = await resp2.json();

    const pokemon = {
        'name': pokemonData['name'],
        'image': pokemonData['sprites']['front_default'],
        'types': pokemonData['types'],
        'description': pokemonDescriptionData['flavor_text_entries'][0]['flavor_text']
    };
    pokemons[num] = pokemon;

    const pokemonList = document.getElementById("pokemon-list");
    const pokemonItem = document.createElement("li");
    pokemonItem.innerText = pokemon['name'];
    pokemonItem.id = num;
    pokemonItem.classList.add("pokemon-list__item");
    pokemonList.append(pokemonItem);
    pokemonItem.addEventListener("click", pokemonItemEventListener);
  };


for (let i = 1; i < pokemon_count; i++) {
    getPokemon(i);
}

const pokemonItemEventListener = (e) => {
  e.preventDefault();

  const htmlPokemonName = document.getElementById("pokemon-name");
  const htmlPokemonImage = document.getElementById("pokemon-image");
  const htmlPokemonTypes = document.getElementById("pokemon-types");
  const htmlPokemonDescription = document.getElementById("pokemon-description");
  const pokemon = pokemons[e.target.id];

  htmlPokemonName.innerText = pokemon['name'];
  htmlPokemonImage.src = pokemon['image'];
  htmlPokemonTypes.innerHTML = "";
  htmlPokemonDescription.innerText = pokemon['description'];
  pokemon["types"].map((typeObj) => {
    const typeItem = document.createElement("li");
    typeItem.innerText = typeObj["type"]["name"];
    typeItem.classList.add("pokemon-data__type");
    typeItem.classList.add("pokemon-data__type--" + typeObj["type"]["name"]);
    htmlPokemonTypes.append(typeItem);
  });
};

function showError(resp, num) {
  console.log(`Pokemon ${num} data fetch failed`);
  const htmlConnStatus = document.getElementById("conn-status");
  htmlConnStatus.innerText = `Failed to fetch data for ${num} pokemon - status ${resp.status}`
}