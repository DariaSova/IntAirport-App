require 'sinatra' 
require 'sqlite3'

get '/' do 
  str = "Welcome to the Airport!" 

  db = SQLite3::Database.open "Airport.db"
  db.execute( "select * from numbers" ) do |row|
    str+=row[0]
  end
  db.close
  str 
end
