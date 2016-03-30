require 'sqlite3'

db = SQLite3::Database.new( "Airport.db" )

File.foreach("SQLsetup.sql", ';') do |statement|
  db.execute(statement)
end

File.foreach("SQLinsert.sql", ';') do |insertion|
	db.execute(insertion)
end
