let todolist = [];

const todolistForm        = document.getElementById("todolist_add_form");
const todolistInput       = document.getElementById("todolist_input");
const todolistAddButton   = document.getElementById("todolist_add_button");
const todolistHeader      = document.getElementById("todolist_header");
const todolistClearButton = document.getElementById("todolist_clear_button");
const todolistItemsList   = document.getElementById("todolist_items_list");
const todolistDonerevertButtons = [];
const todolistRemoveButtons = [];

function render() {
    todolistHeader.innerText = "TODO list (" + todolist.length + " remaining)";
    todolistItemsList.innerHTML = todolist.map((todo_item) => `
        <li>
            <label class="todolist_items__label">${todo_item.description}</label>
            <button class="todolist_items__button todolist_items__button--donerevert" id="todolist_item_donerevert_button${todo_item.id}" type="button">Done</button>
            <button class="todolist_items__button todolist_items__button--remove" id="todolist_item_remove_button${todo_item.id}" type="button">Remove</button>
        </li>
    `).join('');
}

todolistForm.addEventListener("submit", function(e) {
    e.preventDefault();
    new_todo = {
        id: Math.floor(Math.random() * Number.MAX_SAFE_INTEGER),
        description: todolistInput.value,
        finished: false
    }
    if (todolistInput.value != "") {
        todolist.push(new_todo);
        todolistInput.value = "";

        let li = document.createElement("li");
        let label = document.createElement("label");
        let button_donerevert = document.createElement("button");
        let button_remove = document.createElement("button");
        label.className = "todolist_items__label";
        button_donerevert.classList.add("todolist_items__button");
        button_donerevert.classList.add("todolist_items__button--donerevert");
        button_remove.classList.add("todolist_items__button");
        button_remove.classList.add("todolist_items__button--remove");

        
    }
});

todolistClearButton.addEventListener("click", function(e) {
    e.preventDefault();
    todolist = [];
    render();
});