const libraryStore = [];

// String.prototype.capitalize = function() {
//   return this.length === 0 ? '' : this[0].toUpperCase() + this.slice(1)
// }

/**
 * @param {string} word 
 * @returns Capitalized word
 */
function capitalize(word) {
  return word.length === 0 ? '' : word[0].toUpperCase() + word.slice(1);
}
// console.log(capitalize('alice'));
// console.log(capitalize(''));

/**
 * 
 * @param {string} sentence 
 * @returns Sentence in which every word is capitalized
 */
function capitalizeSentence(sentence) {
  words = sentence.split(' ').map(capitalize);
  return words.join(' ');
}
// console.log(capitalizeSentence('alice'))
// console.log(capitalizeSentence('alice in Wonderland'))


class Media {
  #title;
  #ratings;
  #available;
  
  constructor(props) {
    if (props === undefined) {
      throw new Error('No Media properties provided');
    }
    if (typeof props.title !== 'string' || props.title === '') {
      throw new Error('Invalid \'title\' value');
    }
    
    this.#title = capitalizeSentence(props.title);
    this.#ratings = [];
    this.#available = true;
  }

  get title() {
    return this.#title;
  }
  get ratings() {
    return this.#ratings;
  }
  get available() {
    return this.#available;
  }

  /**
   * Adds new rating for a media item
   * @param {number} rating 
   */
  addRating(rating) {
    if (typeof rating !== 'number' || rating <= 0 || rating > 10) {
      throw new Error('Invalid rating values');
    }
    this.#ratings.push(rating);
  }

  /**
   * Simulates ordering a media item by flagging it as non-available 
   * @returns a promise, that is resolved if item is available, else is rejected
   */
  orderMedia() {
    return new Promise((resolve, reject) => {
      if (this.#available) {
        setTimeout(() => {
          this.#available = false;
          resolve();
        }, 1000)
        return;
      }

      reject("Not available")
    })
  }

  /**
   * Simulates returning a media item by flagging it as available 
   * @returns a promise, that is resolved if item is non-available, else is rejected
   */
  returnMedia() {
    return new Promise((resolve, reject) => {
      if (!this.#available) {
        setTimeout(() => {
          this.#available = true;
          resolve();
        }, 1000)
        return;
      }

      reject("Already returned")
    })
  }
}

// verify3()

// verify4()

class Book extends Media {
  #author;
  #pages;
  
  constructor(props) {
    super(props);
    if (typeof props.author !== 'string' || props.author === '') {
      throw new Error('Invalid \'author\' value');
    }
    if (typeof props.pages !== 'number' || props.number < 0) {
      throw new Error('Invalid \'pages\' value');
    }

    this.#author = capitalizeSentence(props.author);
    this.#pages = props.pages;
  }

  get author() {
    return this.#author;
  }
  get pages() {
    return this.#pages;
  }

  orderBook() {
    return super.orderMedia();
  }
  returnBook() {
    return super.returnMedia();
  }
}

// verify5()

class Movie extends Media {
  #director;
  #length;
  
  constructor(props) {
    super(props);
    if (typeof props.director !== 'string' || props.director === '') {
      throw new Error('Invalid \'director\' value');
    }
    if (typeof props.length !== 'number' || props.length < 0) {
      throw new Error('Invalid \'length\' value');
    }

    this.#director = props.director;
    this.#length = props.length;
  }

  get director() {
    return this.#director;
  }
  get length() {
    return this.#length;
  }

  orderMovie() {
    return super.orderMedia();
  }
  returnMovie() {
    return super.returnMedia();
  }
}

verify7()

/**
 * Adds a new media item to the library
 * @param {object} props 
 * @returns succesfully added media item, else - undefined
 */
const addToLibrary = (props) => {
  switch(props.type) {
    case "book": {
      try {
        const media = new Book(props)
        libraryStore.push(media);
        return media;
      }
      catch(err) {
        console.log(err);
        return undefined;
      }
    }
    case "movie": {
      try {
        const media = new Movie(props)
        libraryStore.push(media);
        return media;
      }
      catch(err) {
        console.log(err);
        return undefined;
      }
    }
    default: {
      try {
        const media = new Media(props);
        libraryStore.push(media);
        return media;
      }
      catch(err) {
        console.log(err);
        return undefined;
      }
    }
  }
}

// verify8();

/**
 * Adds multiple items to a library
 * @param {*} propsArr - an array of objects to add
 * @returns - returns an array of succesfully added items
 */
function bulkAddToLibrary(propsArr) {
  resultArr = [];
  propsArr.forEach(props => {
    media = addToLibrary(props);
    resultArr.push(media);
  });
  return resultArr;
}

// verify9();

/**
 * Simulates ordering an item from a library
 * @param {string} title - title of the item to order (we uniqueness of the titles) 
 */
async function order(title) {
  const idx = libraryStore.findIndex(function(media) { return media.title === title });
  try {
    await libraryStore[idx].orderMedia();
    console.log("Order completed!");
  } catch(err) {
    console.log("Sorry! " + err);
  }
}

//verify10()










//===========================================================
// WEYFIKACJA 3
function verify3() {
  const media = new Media({title: 'alice in wonderland'})
  console.log(media.title) // 'Alice In Wonderland'
  console.log(media.ratings) // []
  console.log(media.available) // true

  media.addRating(9)
  media.addRating(8.5)
  console.log(media.ratings) // [9, 8.5]

  media.title = "not alice"
  media.ratings = [1, 1]
  media.available = false
  console.log(media.title) // 'Alice In Wonderland'
  console.log(media.ratings) // [9, 8.5]
  console.log(media.available) // true
}
//===========================================================

//===========================================================
// WERYFIKACJA 4
async function verify4() {
  const media = new Media({title: 'alice in wonderland'})

  await media.orderMedia()
  console.log(media.available) // false

  await media.returnMedia()
  console.log(media.available) // true
}
//===========================================================

//===========================================================
// WERYFIKACJA 5
async function verify5() {
  
const book = new Book({
  title: "alice's adventures in wonderland",
  author: 'lewis carroll',
  pages: 136
})

  console.log(book.title) // "Alice's Adventures In Wonderland"
  console.log(book.ratings) // []
  console.log(book.available) // true
  console.log(book.author) // 'Lewis Carroll'
  console.log(book.pages) // 136

  book.addRating(9)
  book.addRating(8.5)
  console.log(book.ratings) // [9, 8.5]

  book.title = "not alice"
  book.ratings = [1, 1]
  book.available = false
  book.author = "Charles Dickens"
  book.pages = 500
  console.log(book.title) // "Alice's Adventures In Wonderland"
  console.log(book.ratings) // [9, 8.5]
  console.log(book.available) // true
  console.log(book.author) // 'Lewis Carroll'
  console.log(book.pages) // 136

  await book.orderBook()
  console.log(book.available) // false

  await book.returnBook()
  console.log(book.available) // true
}
//===========================================================
// WERYFIKACJA 6
async function verify6() {
  const movie = new Movie({
    title: "alice in wonderland",
    director: 'tim burton',
    length: 108
  })
  
  console.log(movie.title) // 'Alice In Wonderland'
  console.log(movie.ratings) // []
  console.log(movie.available) // true
  console.log(movie.director) // 'Tim Burton'
  console.log(movie.length) // 108
  
  movie.addRating(9)
  movie.addRating(8.5)
  console.log(movie.ratings) // [9, 8.5]
  
  movie.title = "not alice"
  movie.ratings = [1, 1]
  movie.available = false
  movie.director = "Tommy Wiseau"
  movie.length = 500
  console.log(movie.title) // 'Alice In Wonderland'
  console.log(movie.ratings) // [9, 8.5]
  console.log(movie.available) // true
  console.log(movie.director) // 'Tim Burton'
  console.log(movie.length) // 108
  
  await movie.orderMovie()
  console.log(movie.available) // false
  
  await movie.returnMovie()
  console.log(movie.available) // true
}
//===========================================================
// WERYFIKACJA 7
function verify7() {
  //new Media()

  //new Media({ title: 123 })

  //new Book({ title: 123 })

  //new Book({ title: "alice's adventures in wonderland" })

  // new Book({ 
  //   title: "alice's adventures in wonderland",
  //   author: 'Lewis Carroll',
  //   pages: -10
  // })

  // new Book({ 
  //   title: "alice's adventures in wonderland",
  //   author: 'Lewis Carroll',
  // })

  //new Movie({ title: 123 })

  //new Movie({ title: 'Alice in wonderland' })

  // new Movie({ 
  //   title: 'Alice in wonderland',
  //   director: 'tim burton',
  //   length: -10
  // })

  // new Movie({ 
  //   title: 'Alice in wonderland',
  //   director: 'tim burton',
  // })

  // new Media({ 
  //   title: 'Alice in wonderland',
  // }).addRating(0)

  // new Media({ 
  //   title: 'Alice in wonderland',
  // }).addRating([1,2,3])
}
//===========================================================
// WERYFIKACJA 8
function verify8() {
  const book = addToLibrary({
    type: 'book',
    title: "alice's adventures in wonderland",
    author: 'lewis carroll',
    pages: 136
  })
  const movie = addToLibrary({
    type: 'movie',
    title: "alice in wonderland",
    director: 'tim burton',
    length: 108
  })
  const media = addToLibrary({
    title: 'Media'
  })
  
  console.log(libraryStore) 
 
  const book1 = addToLibrary({
    type: 'book',
    author: 'lewis carroll',
    pages: 136
  }) // Wrong title
  const book2 = addToLibrary({
    type: 'book',
    title: "alice's adventures in wonderland",
    pages: 136
  }) // Wrong author
  const book3 = addToLibrary({
    type: 'book',
    title: "alice's adventures in wonderland",
    author: 'lewis carroll',
  }) // Wrong pages
  const book4 = addToLibrary({
    type: 'book',
    title: "alice's adventures in wonderland",
    author: 'lewis carroll',
    pages: -10
  }) // Wrong pages
  const movie1 = addToLibrary({
    type: 'movie',
    director: 'tim burton',
    length: 108
  }) // Wrong title
  const movie2 = addToLibrary({
    type: 'movie',
    title: "alice in wonderland",
    length: 108
  }) // Wrong director
  const movie3 = addToLibrary({
    type: 'movie',
    title: "alice in wonderland",
    director: 'tim burton',
  }) // Wrong length
  const movie4 = addToLibrary({
    type: 'movie',
    title: "alice in wonderland",
    director: 'tim burton',
    length: -10
  }) // Wrong length
  const media2 = addToLibrary({
    title: 123
  }) // Wrong title
}
//===========================================================
// WERYFIKACJA 9
function verify9() {
  const [book, movie, media] = bulkAddToLibrary([
    {
      type: 'book',
      title: "alice's adventures in wonderland",
      author: 'lewis carroll',
      pages: 136
    }, 
    {
      type: 'movie',
      title: "alice in wonderland",
      director: 'tim burton',
      length: 108
    }, 
    {
      title: 'Media'
    }
  ])
  
  console.log(libraryStore) 
  /*
  [ Book { _title: 'Alice\'s Adventures In Wonderland',
      _ratings: [],
      _available: true,
      _author: 'Lewis Carroll',
      _pages: 136 
    },
    Movie { _title: 'Alice In Wonderland',
      _ratings: [],
      _available: true,
      _director: 'Tim Burton',
      _length: 108 
    },
    Media { _title: 'Media', _ratings: [], _available: true }
  ]
  */
}
//===========================================================
// WERYFIKACJA 10
async function verify10() {
  const book = addToLibrary({
    type: 'book',
    title: "alice's adventures in wonderland",
    author: 'lewis carroll',
    pages: 136
  })
  
  console.log(book.available) // true
  await order("Alice's Adventures In Wonderland")
  console.log(book.available) // false
  await order("Alice's Adventures In Wonderland") // Sorry! Not available
}



async function verify11() {
  const book = addToLibrary({
    type: 'book',
    title: "alice's adventures in wonderland",
    author: 'lewis carroll',
    pages: 136
  })
  const movie = addToLibrary({
    type: 'movie',
    title: "alice in wonderland",
    director: 'tim burton',
    length: 108
  })
  const media = addToLibrary({
    title: 'Media'
  })
  
  const startTime = Date.now();
  await bulkOrder(["Alice's Adventures In Wonderland", "Alice In Wonderland", "Media"])
  console.log(Date.now() - startTime) // Ok. 1000
  console.log(book.available) // false
  console.log(movie.available) // false
  console.log(media.available) // false
}