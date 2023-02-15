enum Endpoints {
  ELIXIRS = "Elixirs",
  SPELLS = "Spells",
  HOUSES = "Houses",
  INGREDIENTS = "Ingredients",
  WIZARDS = "Wizards",
};

enum Objects {
  ELIXIRS = 0,
  SPELLS,
  HOUSES,
  INGREDIENTS,
  WIZARDS,
};

const elixirDiffs = [ "Unknown", "Advanced", "Moderate", "Beginner", "OrdinaryWizardingLevel", 
  "OneOfAKind" ] as const

type ElixirDiff = typeof elixirDiffs[number];

type Elixir = {
  id: string,
  name: string,
  effect: string,
  sideEffects: string,
  characteristics: string,
  time: string,
  difficulty: ElixirDiff,
  ingredients: { id: string, name: string }[],
  inventors: { id: string, firstName: string, lastName: string }[],
  manufacturer: string
}


const spellLights = ["None", "Blue", "IcyBlue", "Red", "Gold", 
  "Purple","Transparent", "White", "Green", "Orange", "Yellow", 
  "BrightBlue", "Pink", "Violet", "BlueishWhite", "Silver", "Scarlet", 
  "Fire", "FieryScarlet", "Grey", "DarkRed", "Turquoise", "PsychedelicTransparentWave", 
  "BrightYellow", "BlackSmoke"] as const
const spellTypes = [ "None", "Charm", "Conjuration", "Spell", "Transfiguration", 
  "HealingSpell", "DarkCharm", "Jinx", "Curse", "MagicalTransportation", "Hex", 
  "CounterSpell", "DarkArts", "CounterJinx", "CounterCharm", "Untransfiguration", 
  "BindingMagicalContract", "Vanishment" ] as const

type SpellLight = typeof spellLights[number];
type SpellType  = typeof spellTypes[number];

type Spell = {
  id: string,
  name: string,
  incantation: string,
  canBeVerbal: boolean,
  effect: string,
  type: SpellType,
  light: SpellLight,
  creator: string
}

let elixirs: Elixir[];
let spells: Spell[];

class FetchError extends Error {
  constructor(response: string | number) { // dostaje albo message:string, albo response.status:number
    if (typeof response === "number") {
      super(`Error code: ${response}`);
    } else {
      super(response);
    }
  }
}

const fetchData = async <T>(endpoint: Endpoints): Promise<T[]> => {
  try {
    const response = await fetch(
      `https://wizard-world-api.herokuapp.com/${endpoint}`,
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
        },
      }
    );

    if (response.ok === false) {
      throw new FetchError(response.status);
    }

    return response.json();
  } catch (e) {
    if (e instanceof TypeError && e.message.includes("NetworkError")) {
      throw new FetchError(e.message);
    }

    throw e;
  }
};

function isElixir(obj: Elixir|Spell): obj is Elixir {
  return (obj as Elixir).effect !== undefined;
}

function isSpell(obj: Elixir|Spell): obj is Spell {
  return (obj as Spell).incantation !== undefined;
}

const getElixirs = async () => {
  const data = await fetchData<Elixir>(Endpoints.ELIXIRS);

  return data.filter(
    ({ name, effect }) => name?.length > 0 && effect?.length > 0
  );
};

const getSpells = async () => {
  const data = await fetchData<Spell>(Endpoints.SPELLS);

  return data.filter(
    ({ name, incantation }) => name?.length > 0 && incantation?.length > 0
  );
};

const getRandomNumber = (maxNumber: number) => Math.floor(Math.random() * maxNumber);

const getThreeOptions = <T extends Elixir|Spell>(objects: T[]) => {
  const set = new Set<number>();

  while (set.size < 3) {
    set.add(getRandomNumber(objects.length));
  }

  const [first, second, third] = set;

  return {
    option1: objects[first],
    option2: objects[second],
    option3: objects[third],
  };
};

const generateGame = (options: {question: string, answer: string }[], questionFunction:(question: string) => string) => {
  const valid = getRandomNumber(3);

  console.log(`Cheatmode: Valid option is option ${valid + 1}`);

  document.getElementById("question")!.innerText = questionFunction(
    options[valid].question
  );

  document.getElementById("option1")!.innerText = options[0].answer;
  document.getElementById("option2")!.innerText = options[1].answer;
  document.getElementById("option3")!.innerText = options[2].answer;

  document.getElementById("options")!.addEventListener("click", (e) => {
    const target = e.target as HTMLInputElement;

    if (target.tagName !== "BUTTON") return;

    if (Number(target.dataset.option) === valid) {
      document.getElementById("response")!.innerText = "Good!";
      round();
      return;
    }

    document.getElementById("response")!.innerText = "Wrong!";
  });
};

const round = () => {
  const game = getRandomNumber(2);

  const optionsElement = `
    <div id="options">
      <button id="option1" data-option="0"></button>
      <button id="option2" data-option="1"></button>
      <button id="option3" data-option="2"></button>
    </div>
  `;

  document.getElementById("game")!.innerHTML = optionsElement;

  if (game === Objects.ELIXIRS) {
    const { option1, option2, option3 } = getThreeOptions(elixirs);

    const options = [option1, option2, option3].map((option) => ({
      question: option.name,
      answer: option.effect,
    }));

    generateGame(options, (question: string) => `Elixir ${question} has effect:`);
  }

  if (game === Objects.SPELLS) {
    const { option1, option2, option3 } = getThreeOptions(spells);

    const options = [option1, option2, option3].map((option) => ({
      question: option.name,
      answer: option.incantation,
    }));

    generateGame(options, (question: string) => `Spell ${question} has incantation:`);
  }
};

const game = async () => {
  try {
    [elixirs, spells] = await Promise.all([getElixirs(), getSpells()]);

    round();
  } catch (e) {
    document.getElementById("game")!.innerHTML = "";
    document.getElementById("question")!.innerHTML = "";

    if (e instanceof FetchError) {
      document.getElementById("response")!.innerText =
        "Problem with the connection. Try refreshing the page.";
      return;
    }

    if (e instanceof Error)
      document.getElementById("response")!.innerText = e.message;
  }
};

game();

const check = (object: Elixir | Spell) => {
  if (isSpell(object)) {
    console.log(object.incantation)
  }

  if (isElixir(object)) {
    console.log(object.ingredients)
  }
}