CREATE TABLE IF NOT EXISTS Airlines(
  name VARCHAR(30),
  code VARCHAR(30) PRIMARY KEY,
  website VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Routes(
  route_number INT,
  plane_model VARCHAR(30),
  airline_code INT REFERENCES Airlines(code) ON DELETE CASCADE,
  PRIMARY KEY (route_number, airline_code)
);

CREATE TABLE IF NOT EXISTS OutgoingRoutes(
  destination VARCHAR(30),
  out_time DATE,
  airline_code INT REFERENCES Airlines(code) ON DELETE CASCADE,
  route_number INT REFERENCES Routes(route_number) ON DELETE CASCADE,
  PRIMARY KEY (route_number, airline_code)
);

CREATE TABLE IF NOT EXISTS IncomingRoutes(
  came_from VARCHAR(30),
  inc_time DATE,
  airline_code INT REFERENCES Airlines(code) ON DELETE CASCADE,
  route_number INT REFERENCES Routes(route_number) ON DELETE CASCADE,
  PRIMARY KEY (route_number, airline_code)
);

CREATE TABLE IF NOT EXISTS Departures(
  id VARCHAR(50) PRIMARY KEY,
  gate INT REFERENCES Gates(id) ON DELETE CASCADE,
  dep_time DATE,
  route_number INT,
  airline_code INT,
  FOREIGN KEY (route_number, airline_code)
  REFERENCES OutgoingRoutes(route_number, airline_code) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Arrivals(
  id VARCHAR(50) PRIMARY KEY,
  gate VARCHAR(50) REFERENCES Gates(id) ON DELETE CASCADE,
  arr_time DATE,
  route_number INT,
  airline_code INT,
  status VARCHAR(20),
  FOREIGN KEY (route_number, airline_code)
  REFERENCES IncomingRoutes(route_number, airline_code) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Passengers(
  id VARCHAR(50) PRIMARY KEY,
  name VARCHAR(30),
  date_of_birth DATE,
  place_of_birth VARCHAR(50),
  gov_issued_id VARCHAR(50),
  arr_ID VARCHAR(50) REFERENCES Arrivals(id) ON DELETE CASCADE,
  dep_ID VARCHAR(50) REFERENCES Departures(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Baggage(
  id VARCHAR(50) PRIMARY KEY,
  weight INT,
  passenger_id VARCHAR(50) REFERENCES Passengers(id) ON DELETE CASCADE
);



CREATE TABLE IF NOT EXISTS Gates(
  id VARCHAR(50) PRIMARY KEY,
  status INT
)
