
from sqlalchemy.engine import base

from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Table, Column, Integer, ForeignKey, String, DateTime
from sqlalchemy.orm import create_session, sessionmaker, relationship, validates
from sqlalchemy import create_engine
from sqlalchemy.sql import func
import getopt, sys

Base = declarative_base()

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




# OPERATIONS:
# 1. add new Book: --add --title= --author= --year=
# 2. borrow a book --borrow --title= --name=
# 3. return a book --return --title=

if __name__ == '__main__':
    #################################################
    # PARSING ARGUMENTS
    
    argv = sys.argv[1:]
    try:
        opts, args = getopt.getopt(argv, "", ["list", "add", "borrow", "return", "title=", "author=", "name=", "year="])
    except:
        print("Error occured")

    add, ret, bor, lis = 0, 0, 0, 0
    title, author, name, year = None, None, None, None
    for opt, arg in opts:
        if opt == "--list":
            lis = 1
        elif opt == "--add":
            add = 1
        elif opt == "--return":
            ret = 1
        elif opt == "--borrow":
            bor = 1
        elif opt == "--title":
            title = arg
        elif opt == "--author":
            author = arg
        elif opt == "--name":
            name = arg
        elif opt == "--year":
            year = arg
        else:
            print("Invalid argument specified, quitting...")
            exit(-1)
    
    if add + ret + bor + lis != 1: # user should select only one option
        print("No action specified, quitting...")
        exit(-1)
    if lis == 1 and name == None:
        print("Missing argument for option name, quitting...")
        exit(-1)
    if add == 1 and (title == None or author == None or year == None):
        print("Missing argument for option add, quitting...")
        exit(-1)
    if bor == 1 and (title == None or name == None):
        print("Missing argument for option borrow, quitting...")
        exit(-1)
    if ret == 1 and title == None:
        print("Missing argument for option return, quitting...")
        exit(-1)

    # PARSING FINISHED
    ##################################################################
    if lis == 1:
        people_list = session.query(Person).filter(Person.name == name).all()
        print(f"{name}'s books:")
        for book in people_list[0].books:
            print(f"Title: {book.title}; Author: {book.author}; Year: {book.year}")
    if add == 1:
        book = Book(title=title, year=year, author=author)
        session.add(book)
        session.commit()
    if bor == 1:
        book_list = session.query(Book).filter(Book.title == title).all()
        people_list = session.query(Person).filter(Person.name == name).all()
        if book_list == [] or people_list == []:
            print("No item found in database, quitting...")
            exit(1)
        people_list[0].books += [book_list[0]]
        session.commit()  
    if ret == 1:
        book_list = session.query(Book).filter(Book.title == title).all()
        if book_list == []:
            print("No item found in database, quitting...")
            exit(1)
        person_id = book_list[0].borrower
        people_list = session.query(Person).filter(Person.id == person_id).all()
        if people_list == []:
            print("This item is not borrowed, quitting...")
            exit(2)
        people_list[0].books.remove(book_list[0])
        session.commit()