require 'sqlite3'

def get_routes_for_airline(airline)
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT route_number 
FROM Airlines
JOIN Routes ON (Airlines.code = Routes.airline_code)
WHERE Airlines.name = ?", [airline]);
  db.close if db
end
