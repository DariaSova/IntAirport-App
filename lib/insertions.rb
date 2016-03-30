require 'sqlite3'
require 'securerandom'

def airline_insert(name, code, website)
  db = SQLite3::Database.open "Airport.db"
  db.execute("INSERT INTO Airlines VALUES(?, ?, ?)", [name, code, website]);
  db.close if db
end

def route_insert(type, route_num, model, code, city, time)
  db = SQLite3::Database.open "Airport.db"
  db.execute("INSERT INTO Routes VALUES(?, ?, ?)", [route_num, model, code]);
  if (type == "Outgoing")
	db.execute("INSERT INTO OutgoingRoutes VALUES(?, ?, ?, ?)", [city, time, code, route_num]);
  else 
	db.execute("INSERT INTO IncomingRoutes VALUES(?, ?, ?, ?)", [city, time, code, route_num]);
  end
  db.close if db
end

def flight_insert(type, gate, time, route_num, code)
  db = SQLite3::Database.open "Airport.db"
  if (type == "Arrival")
	db.execute("INSERT INTO Arrivals VALUES(?, ?, ?, ?, ?, ?)", [SecureRandom.uuid, gate, time, route_num, code, "In Progress"]);
  else 
	db.execute("INSERT INTO Departures VALUES(?, ?, ?, ?, ?)", [SecureRandom.uuid, gate, time, route_num, code]);
  end
  db.close if db
end