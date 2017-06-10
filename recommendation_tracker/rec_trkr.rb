

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("recs.db")


create_books_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author_first VARCHAR(255),
    author_last VARCHAR(255),
    user_message VARCHAR(255),
    friend_id INT,
    FOREIGN KEY (friend_id) REFERENCES friends(id)
  )
SQL

create_friends_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS friends(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)

  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_books_cmd)
db.execute(create_friends_cmd)


# All methods for BOOKS table
def add_book(db, title, author_first, author_last, user_message, friend_id)
  db.execute("INSERT INTO books (title, author_first, author_last, user_message, friend_id) VALUES (?, ?, ?, ?, ?)", [title, author_first, author_last, user_message, friend_id])
end

def view_books(db)
  books = db.execute('SELECT * FROM books')

  books.each do |book|
    puts "\n#{books.index(book) + 1}. #{book[1]} by #{book[2]} #{book[3]} friend: #{book[5]}"
  end

end

def delete_book(db, title)
  db.execute('DELETE FROM books WHERE title = ?', [title])
end

# All Methods for FRIENDS table ------
def add_friend(db, friends_name)
  db.execute("INSERT INTO friends (name) VALUES (?)", [friends_name])
end

def view_friends(db)
  friends = db.execute('SELECT * FROM friends')

  friends.each do |friend|
    puts "\n#{friends.index(friend) + 1}. #{friend[1]}"
  end
end


UI
mode = ''
until mode == 'q'

  puts "\nA - add book\nD - delete book\nV - view your recommendations\nQ - quit\n"

  mode = gets.chomp.downcase

  if mode == 'a'
# Adding A Book
    done_adding_books = false

    until done_adding_books == true
      puts "Awesome! A new recommendation! Who gave it?"
      new_friend = gets.chomp
      old_friends = db.execute('SELECT name FROM friends')

      if
      puts "\nEnter the book's title."
      title = gets.chomp
      puts "\nEnter the author's first name."
      author_first = gets.chomp
      puts "\nEnter the author's last name."
      author_last = gets.chomp
      puts "\nWhat where you talking about when this book was recommended to you?"
      user_message = gets.chomp
      add_book(db, title, author_first, author_last,user_message, friend_id)

      puts "Add another? Y or N"

        add_another = gets.chomp.downcase
        if add_another == 'n'
          done_adding_books = true
        end
      end
# Deleting a book

    elsif mode == 'd'
      view_books(db)
      puts "\nType the title of the book you want to delete."
      book_to_delete = gets.chomp
      delete_book(db, book_to_delete)
# View your Recommendations
  elsif mode == 'v'
  view_books(db)
  end
end



