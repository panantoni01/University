let shopping_list = [];

const STATUS_PURCHASED = 0;
const STATUS_TO_BUY = 1;


/**
 * Adds a new product to the list
 * @param {string} name - product name
 * @param {number} count - natural number
 * @param {string} date - date ("yyyy-mm-dd") until the product must be bought
 * @returns {number} unique product id
 */
function add_product(name, count, date) {
    if (count <= 0)
        return null;
    const uid = Math.floor(Math.random() * Number.MAX_SAFE_INTEGER);
    let product = {
        uid: uid,
        name: name,
        count: count,
        date: new Date(date),
        status: STATUS_TO_BUY,
        price: undefined
    }
    shopping_list.push(product);
    return uid;
}

/**
 * Deletes a product from the list
 * @param {number} uid - uid of the product to delete
 */
function delete_product(uid) {
    let index = shopping_list.findIndex(function(pr) { return pr.uid == uid });
    if(index >= 0) {
        shopping_list.splice(index, 1);
    }
}

/**
 * Modify a specific property of a product. If the 'status' property of a product
 * is modified back to STATUS_TO_BUY, then the price becomes undefined
 * @param {number} uid - uid of the product to modify 
 * @param {string} property - property of the product to modify. This value should
 * be one of the following: 'name', 'status', 'count', 'date'.
 * @param {*} new_value - new value for the chosen property
 */
function set_product_property(uid, property, new_value) {
    let index = shopping_list.findIndex(function(pr) { return pr.uid == uid });
    if(index >= 0 && ['name', 'status', 'count', 'date'].includes(property)) { 
        shopping_list[index][property] = new_value;
        if (property == 'status' && new_value == STATUS_TO_BUY) {
            shopping_list[index][price] = undefined;
        }
    }
}

/**
 * Move a product to a specific place in the shopping_list
 * @param {number} uid - uid of the product to move
 * @param {number} dest_index - non-negative destination index in the shopping_list
 */
function move_product(uid, dest_index) {
    let index = shopping_list.findIndex(function(pr) { return pr.uid == uid });
    if (index >= 0 && dest_index >=0) {
        const elem = shopping_list.splice(index, 1);
        shopping_list.splice(dest_index, 0, elem);
    }
}

/**
 * Gets a list of products that need to be bought today
 * @returns a list of products to buy until today
 */
function todays_products() {
    let curr_time = new Date();
    let year = curr_time.getFullYear();
    let month = curr_time.getMonth() + 1;
    let day = curr_time.getDate();
    let today = new Date(year + "-" + month + "-" + day);

    return shopping_list.filter(
        function(pr) { 
            return pr.date.getTime() === today.getTime();
        }
    );
}

/**
 * Set price for a product that had been bought
 * @param {number} uid - uid of the product
 * @param {number} price - price of the product
 */
function set_product_price(uid, price) {
    let index = shopping_list.findIndex(function(pr) { return pr.uid == uid });
    if (index >= 0 && shopping_list[index]['status'] == STATUS_PURCHASED) {
        shopping_list[index]['price'] = price;
    }
}

/**
 * Get a total value of products, that had been bought on a specified day
 * @param {string} date_str - date in format "yyyy-mm-dd"
 * @returns total value of products
 */
function total_price_by_date(date_str) {
    let date = new Date(date_str);
    return shopping_list.reduce(
        function(acc, curr_prod) {
            if (date.getTime() == curr_prod.date.getTime()) {
                return acc + curr_prod.count * curr_prod.price;
            }
            return acc;
        }, 0
    );
}

/**
 * Modify many products from shopping_list in a specific way
 * @param {number} uids - list of uids of the products to modify
 * @param {function} modifier - a callback, that specifies how to modify a product.
 * It gets a product object as an argument and modifies it in a specific way.
 * @returns an array with modified  products
 */
function modify_products(uids, modifier) {
    return shopping_list.map(
        function(product) {
            if (uids.includes(product.uid)) {
                modifier(product);
            }
            return product;
        }
    );
}

apple_id    = add_product("Apple", 1, "2022-11-19");
banana_id   = add_product("Banana", 2, "2022-11-21");
cherry_id   = add_product("Cherry", 3, "2022-11-21");
dewberry_id = add_product("Dewberry", 123, "2022-12-01");
eggplant_id = add_product("Eggplant", 1, "2022-12-24");

delete_product(dewberry_id);

console.log(shopping_list);
move_product(apple_id, 2);
console.log(shopping_list);

set_product_property(banana_id, 'status', STATUS_PURCHASED);
set_product_property(cherry_id, 'status', STATUS_PURCHASED);
set_product_price(banana_id, 2.5);
set_product_price(cherry_id, 1.0);

shopping_list = modify_products([apple_id, banana_id, cherry_id], 
    function(product) {
        product['name'] = 'New-' + product['name'];
    }
);

shopping_list = modify_products([apple_id, banana_id, cherry_id, dewberry_id], 
    function(product) {
        if (product['price'] != undefined)
            product['price'] *= 4.70;
    }
);