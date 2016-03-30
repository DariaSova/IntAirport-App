require 'sqlite3'

def get_routes_for_airline(airline)
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT route_number 
FROM Airlines
JOIN Routes ON (Airlines.code = Routes.airline_code)
WHERE Airlines.name = ?", [airline]);
  db.close if db
end

def get_routes_for_city(city)
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT route_number
    FROM (
	SELECT route_number
	FROM OutgoingRoutes
	WHERE destination = ?
	UNION ALL
	SELECT route_number
	FROM IncomingRoutes
	WHERE came_from = ?
	)", city, city);
  db.close if db
end

def get_flights_for_date(date)
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT id
    FROM (
	SELECT id
	FROM Departures
	WHERE 24*ABS(dep_Time - date(?, 'YYYY-MM-DD hh24:mi') ) <= 1
	UNION ALL
	SELECT id
	FROM Arrivals
	WHERE 24*ABS(arr_Time - date(?, 'YYYY-MM-DD hh24:mi') ) <= 1
)", date, date);
  db.close if db
end

def get_passengers(flight)
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT p.id, p.name, p.date_of_birth, p.place_of_birth, p.gov_issued_id
    FROM Passengers p
    WHERE p.arr_ID = ? OR p.dep_ID = ?", flight, flight);
  db.close if db
end

def get_baggage(passenger_id)
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT id FROM Baggage WHERE passenger_id = ?", passenger_id);
  db.close if db
end

def get_free_gate
  db = SQLite3::Database.open "Airport.db"
  db.execute("SELECT id FROM Gates WHERE status = 0 ORDER BY ROWID ASC LIMIT 1;");
  db.close if db
end

def mark_flight_as_done(flight)
  db = SQLite3::Database.open "Airport.db"
  db.execute("With flight AS(
	SELECT id 
	FROM <ARRIVALS OR DEPARTURES> flights
	WHERE flights.id = ?
  )
  UPDATE <ARRIVALS OR DEPARTURES>
  SET status = 'done'
  WHERE id= ?", flight, flight);
db.execute("SELECT gate
  FROM <ARRIVALS OR DEPARTURES>
  WHERE id = flight.gate");
  db.close if db
end
