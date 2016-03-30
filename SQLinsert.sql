INSERT INTO Airlines
VALUES('Air Canada', 'AC', 'www.aircanada.com');
INSERT INTO Airlines
VALUES('American Airlines', 'AA', 'www.aa.com');
INSERT INTO Airlines
VALUES('Alaska Airlines', 'AS', 'www.alaskaair.com');

INSERT INTO Routes
VALUES(3, 'Boeing 787-8', 'AC');
INSERT INTO Routes
VALUES(8, 'Boeing 777-300ER', 'AC');
INSERT INTO Routes
VALUES(2, 'Airbus A321', 'AA');
INSERT INTO Routes
VALUES(6, 'Boeing 767-300', 'AA');
INSERT INTO Routes
VALUES(4, 'Boeing 737-800', 'AS');

INSERT INTO OutgoingRoutes
VALUES('Tokyo, JP', datetime('2016-03-29 13:40'), 'AC', 3);
INSERT INTO OutgoingRoutes
VALUES('Vancouver, CA', datetime('2016-03-29 19:35'), 'AC', 8);
INSERT INTO OutgoingRoutes
VALUES('New York, US', datetime('2016-03-27 09:00'), 'AA', 2);
INSERT INTO OutgoingRoutes
VALUES('Dallas, US', datetime('2016-03-28 17:00'), 'AA', 6);
INSERT INTO OutgoingRoutes
VALUES('Washington, US', datetime('2016-03-26 08:20'), 'AS', 4);

INSERT INTO IncomingRoutes
VALUES('Vancouver, CA', datetime('2016-03-30 15:25'), 'AC', 3);
INSERT INTO IncomingRoutes
VALUES('Hong Kong, HK', datetime('2016-03-29 16:20'), 'AC', 8);
INSERT INTO IncomingRoutes
VALUES('Los Angeles, US', datetime('2016-03-27 17:29'), 'AA', 2);
INSERT INTO IncomingRoutes
VALUES('Kahului, US', datetime('2016-03-29 05:01'), 'AA', 6);
INSERT INTO IncomingRoutes
VALUES('Seattle, US', datetime('2016-03-26 16:10'), 'AS', 4);

INSERT INTO Departures
VALUES(4000, 53, datetime('2016-03-29 14:25'), 3, 'AC');
INSERT INTO Departures
VALUES(4001, 41, datetime('2016-03-29 20:08'), 8, 'AC');
INSERT INTO Departures
VALUES(4002, 46, datetime('2016-03-27 09:00'), 2, 'AA');
INSERT INTO Departures
VALUES(4003, 33, datetime('2016-03-28 17:00'), 6, 'AA');
INSERT INTO Departures
VALUES(4004, 7, datetime('2016-03-26 08:15'), 4, 'AS');

INSERT INTO Arrivals
VALUES(1000, 45, datetime('2016-03-30 16:00'), 3, 'AC');
INSERT INTO Arrivals
VALUES(1001, 70, datetime('2016-03-29 16:51'), 8, 'AC');
INSERT INTO Arrivals
VALUES(1002, 44, datetime('2016-03-27 17:26'), 2, 'AA');
INSERT INTO Arrivals
VALUES(1003, 21, datetime('2016-03-29 04:52'), 6, 'AA');
INSERT INTO Arrivals
VALUES(1004, 18, datetime('2016-03-29 16:11'), 4, 'AS');

INSERT INTO Passengers
VALUES(1600, 'Mary Sue', date('1990-09-05'), 'Victoria, CA', 'Passport', 1000, 4000);
INSERT INTO Passengers
VALUES(1601, 'Mark Sue', date('1980-01-20'), 'Victoria, CA', 'Passport', 1000, 4000);
INSERT INTO Passengers
VALUES(1602, 'John Doe', date('1991-08-21'), 'Nanaimo, CA', 'DL', 1001, 4001);
INSERT INTO Passengers
VALUES(1603, 'Jane Doe', date('1978-05-17'), 'Vancouver, CA', 'Passport', 1001, 4001);
INSERT INTO Passengers
VALUES(1604, 'Gloria Roberts', date('1975-01-20'), 'Los Angeles, US', 'DL', 1002, 4002);
INSERT INTO Passengers
VALUES(1605, 'Joe Orgininalname', date('1985-08-21'), 'Los Angeles, US', 'DL', 1002, 4002);
INSERT INTO Passengers
VALUES(1606, 'Herman Hermit', date('1979-05-17'), 'New York, US', 'Passport', 1002, 4002);
INSERT INTO Passengers
VALUES(1607, 'Johnny Depp', date('1956-10-15'), 'New York, US', 'DL', 1003, 4003);
INSERT INTO Passengers
VALUES(1608, 'Donald Trump', date('1700-01-11'), 'Dallas, US', 'DL', 1003, 4003);
INSERT INTO Passengers
VALUES(1609, 'Joanne McNeil', date('1981-02-11'), 'Nanaimo, CA', 'Passport', 1004, 4004);
INSERT INTO Passengers
VALUES(1610, 'Bernie Sanders', date('1950-08-14'), 'Nanaimo, CA', 'Passport', 1004, 4004);
INSERT INTO Passengers
VALUES(1611, 'Frank Sinatra', date('1970-06-12'), 'Boston, US', 'DL', 1004, 4004);

INSERT INTO Baggage
VALUES(2000, 5, 1600);
INSERT INTO Baggage
VALUES(2001, 20, 1602);
INSERT INTO Baggage
VALUES(2002, 15, 1603);
INSERT INTO Baggage
VALUES(2003, 10, 1606);
INSERT INTO Baggage
VALUES(2004, 2, 1607);
INSERT INTO Baggage
VALUES(2005, 100, 1608);
INSERT INTO Baggage
VALUES(2006, 12, 1609);
INSERT INTO Baggage
VALUES(2007, 22, 1610);
INSERT INTO Baggage
VALUES(2008, 17, 1611);

INSERT INTO Gates
VALUES(53, 0);
INSERT INTO Gates
VALUES(45, 0);
INSERT INTO Gates
VALUES(41, 0);
INSERT INTO Gates
VALUES(70, 0);
INSERT INTO Gates
VALUES(44, 0);
INSERT INTO Gates
VALUES(46, 0);
INSERT INTO Gates
VALUES(33, 0);
INSERT INTO Gates
VALUES(21, 0);
INSERT INTO Gates
VALUES(7, 0);
INSERT INTO Gates
VALUES(18, 0)
