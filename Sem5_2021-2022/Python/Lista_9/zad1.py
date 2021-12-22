
from sqlalchemy.engine import base

from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Table, Column, Integer, ForeignKey, String, DateTime
from sqlalchemy.orm import create_session, sessionmaker, relationship, validates
from sqlalchemy import create_engine
from sqlalchemy.sql import func
from enum import Enum

import gi
gi.require_version('Gtk','3.0')
from gi.repository import Gtk


Base = declarative_base()

#############################################
# CLASSES DEFINITIONS:
#############################################

class Person(Base):
    __tablename__ = "Person"
    
    id = Column(Integer, primary_key=True)
    name = Column(String(40), nullable=False) 
    email = Column(String(254), default="name.surname@gmail.com", nullable=False)
    
    @validates('email')
    def validate_email(self, key, value):
        assert "@" in value
        return value

    books = relationship('Book')

class Book(Base):
    __tablename__ = "Book"

    id = Column(Integer, primary_key=True)
    borrower = Column(Integer, ForeignKey("Person.id"))
    title = Column(String(115), nullable=False)
    year = Column(Integer, nullable=False)
    author = Column(String(40), nullable=False)

#############################################
# INIT DATABASE:
#############################################
engine = create_engine('sqlite:///mybooks.db', echo=True)
Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)
session = Session()

if session.query(Person).first() == None: # we want to insert users only once at the beginning
    p1 = Person(name="Jan Kowalski", email="jkowal@gmail.com")
    p2 = Person(name="Bartosz Nowak", email="bartosz.nowak@onet.pl")
    p3 = Person(name="Antoni Pokusinski", email="antonip@uwr.edu.pl")
    session.add_all([p1, p2, p3])
    session.commit()

#############################################
# GTK:
#############################################

class BookListBoxRow(Gtk.ListBoxRow):
    def __init__(self, book : Book):
        super().__init__()
        self.book = book

def create_row(book : Book):
    row = BookListBoxRow(book)
    hbox = Gtk.Box(orientation=Gtk.Orientation.HORIZONTAL, spacing=5)
    hbox.pack_start(Gtk.Label(label=("Avail" if book.borrower == None else "Taken"),xalign=0), True, True, 0)
    hbox.pack_start(Gtk.Label(label=book.title[0:20]+("..." if len(book.title) > 20 else ""),xalign=0), True, True, 0)
    row.add(hbox)
    return row

def add_book(title, year, author, listbox):
    book = Book(title=title, year=year, author=author)
    session.add(book)
    session.commit()
    listbox.add(create_row(book))


def edit_book(row, title, year, author, listbox_books):
    book = row.book
    book.title = title
    book.year = year
    book.author = author
    session.commit()
    listbox_books.remove(row)
    listbox_books.add(create_row(book))



class Mode(Enum):
    ADD_BOOK = 0
    EDIT_BOOK = 1

class Handler:
    def __init__(self) -> None:
        builder = Gtk.Builder()
        builder.add_from_file("project.glade")
        builder.connect_signals(self)
        
        self.window_main = builder.get_object("window_main")
        self.window_main.connect('destroy', Gtk.main_quit)
        self.entries = [builder.get_object("entry_title"), 
                    builder.get_object("entry_author"),
                    builder.get_object("entry_year")]
        
        self.window_add = builder.get_object("window_add")
        self.mode = Mode.ADD_BOOK
        
        self.window_details = builder.get_object("window_details")
        self.labels = [builder.get_object("label_title"),
                        builder.get_object("label_author"),
                        builder.get_object("label_year"),
                        builder.get_object("label_status")]
        
        self.listbox_books = builder.get_object("listbox_books")
        book_list = session.query(Book).all()
        for book in book_list:
            row = create_row(book)
            self.listbox_books.add(row)
    
    def on_button_add_clicked(self, button):
        self.mode = Mode.ADD_BOOK
        for e in self.entries:
            e.set_text("")
        self.window_add.show_all()

    def on_button_details_clicked(self, button):
        for l in self.labels:
            l.set_text("")
        book = self.listbox_books.get_selected_row().book
        self.labels[0].set_text(book.title)
        self.labels[1].set_text(book.author)
        self.labels[2].set_text(str(book.year))
        self.labels[3].set_text("Avail" if book.borrower == None else "Taken")
        self.window_details.show_all()

    def on_button_edit_clicked(self, button):
        self.mode = Mode.EDIT_BOOK
        book = self.listbox_books.get_selected_row().book
        self.entries[0].set_text(book.title)
        self.entries[1].set_text(book.author)
        self.entries[2].set_text(str(book.year))
        
        self.window_add.show_all()
    
    def on_button_save_clicked(self, button):
        title = self.entries[0].get_text().lstrip().rstrip()
        author = self.entries[1].get_text().lstrip().rstrip()
        year = self.entries[2].get_text().lstrip().rstrip()
        if self.mode == Mode.ADD_BOOK:
            add_book(title, year, author, self.listbox_books)
        else: # self.mode == Mode.EDIT_BOOK
            row = self.listbox_books.get_selected_row()
            edit_book(row, title, year, author, self.listbox_books)
        self.widget_hide(self.window_add)
        self.window_main.show_all()

    def on_button_cancel_clicked(self, button):
        self.widget_hide(self.window_add)
    
    def on_button_back_clicked(self, button):
        self.widget_hide(self.window_details)
    
    def widget_hide(self, widget, data=None):
        widget.hide()
        return True


handler = Handler()
handler.window_main.show_all()
Gtk.main()