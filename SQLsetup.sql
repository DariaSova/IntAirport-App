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

/*Note: not sure if we want Gate to have ON DELETE CASCADE*/
CREATE TABLE IF NOT EXISTS Departures(
  id INT PRIMARY KEY,
  gate VARCHAR(10) REFERENCES Gates(gate) ON DELETE CASCADE,
  dep_time DATE,
  FOREIGN KEY (route_number, airline_code)
  REFERENCES OutgoingRoutes(route_number, airline_code) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Arrivals(
  id INT PRIMARY KEY,
  gate VARCHAR(10) REFERENCES Gates(gate) ON DELETE CASCADE,
  arr_time DATE,
  FOREIGN KEY (route_number, airline_code)
  REFERENCES IncomingRoutes(route_number, airline_code) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Passengers(
  id INT PRIMARY KEY,
  name VARCHAR(30),
  date_of_birth DATE,
  place_of_birth VARCHAR(50),
  gov_issued_id VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Baggage(
  id INT PRIMARY KEY,
  weight INT,
  passenger_id REFERENCES Passengers(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Gates(
  gate VARCHAR(10),
  is_free INT
);

--junction tables
CREATE TABLE OperatedBy(
);

CREATE TABLE OutgoingDepartures(
);

CREATE TABLE IncomingArrivals(
);

CREATE TABLE PassengersArrivals(
  passenger_id INT REFERENCES Passengers(id) ON DELETE CASCADE,
  arrival_id INT REFERENCES Arrivals(id) ON DELETE CASCADE,
  PRIMARY KEY(passenger_id, arrival_id)
);

CREATE TABLE PassengersDepartures(
  passenger_id INT REFERENCES Passengers(id) ON DELETE CASCADE,
  departure_id INT REFERENCES Departures(id) ON DELETE CASCADE,
  PRIMARY KEY(passenger_id, departure_id)
);
