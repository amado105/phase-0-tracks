
require 'sqlite3'

db = SQLite3::Database.new("oscar_films.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS oscar_films(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    year INT
  )
SQL

db.execute(create_table_cmd)

def best_picture(db, name, year)
	db.execute("INSERT INTO oscar_films (name, year) VALUES (?, ?)", [name, year])
end 

puts "How many films do you want to add?"
add_films = gets.chomp.to_i

until add_films == 0 
puts "Enter film title."
title = gets.chomp
puts "Enter year of release."
year = gets.chomp
best_picture(db, title, year)   
add_films -=1
end 
