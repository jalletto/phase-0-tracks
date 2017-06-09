

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("recs.db")


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author_first VARCHAR(255),
    author_last VARCHAR(255)
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)


def add_book(db, title, author_first, author_last)
  db.execute("INSERT INTO books (title, author_first, author_last) VALUES (?, ?, ?)", [title, author_first, author_last])
end

def view_books(db)
  books = db.execute('SELECT * FROM books')

  books.each do |book|
    puts "\n#{books.index(book) + 1}. #{book[1]} by #{book[2]}#{book[3]}"
  end

end

def delete_book(db, title)
  db.execute('DELETE FROM books WHERE title = ?', [title])
end




#UI
mode = ''
until mode == 'q'

  puts "\nA - add book\nD - delete book\nV - view your recommendations\nQ - quit\n"

  mode = gets.chomp.downcase

  if mode == 'a'
    done_adding_books = false

    until done_adding_books == true
      puts "\nEnter the book's title."
      title = gets.chomp
      puts "\nEnter the author's first name."
      author_first = gets.chomp
      puts "\nEnter the author's last name."
      author_last = gets.chomp

      add_book(db, title, author_first, author_last)

      puts "Add another? Y or N"

        add_another = gets.chomp.downcase
        if add_another == 'n'
          done_adding_books = true
        end
      end
    elsif mode == 'd'
      view_books(db)
      puts "\nType the title of the book you want to delete."
      book_to_delete = gets.chomp
      delete_book(db, book_to_delete)
  elsif mode == 'v'
  view_books(db)
  end
end



