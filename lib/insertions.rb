require 'sqlite3'

def airline_insert(name, code, website)
  db = SQLite3::Database.open "Airport.db"
  db.execute("INSERT INTO Airlines VALUES(?, ?, ?)", [name, code, website]);
  db.close if db
end
