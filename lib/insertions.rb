require 'sqlite3'

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