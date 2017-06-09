

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

# add book

add_book(db, 'Dune', 'Frank', 'Herbert')




