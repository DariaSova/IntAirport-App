INSERT INTO Airlines
VALUES('Air Canada', 'AC', 'www.aircanada.com');

INSERT INTO Routes
VALUES(3, 'Boeing 787-8', 'AC');

INSERT INTO OutgoingRoutes
VALUES('Tokyo, JP', datetime('2016-03-29 13:40'),  'AC', 3);

INSERT INTO IncomingRoutes
VALUES('Vancouver, CA', datetime('2016-03-30 15:25'), 'AC', 3);

INSERT INTO Departures
VALUES(4000, 53, datetime('2016-03-29 14:25'), 3, 'AC');

INSERT INTO Arrivals
VALUES(1000, 45, datetime('2016-03-30 16:00'), 3, 'AC');

INSERT INTO Passengers
VALUES(1600, 'Mary Sue', date('1990-09-05'), 
	'Victoria, CA', 'Passport', 1000, 4000);

INSERT INTO Baggage
VALUES(2000, 5, 1600);

INSERT INTO Gates
VALUES(53, 1);
INSERT INTO Gates
VALUES(45, 1);

