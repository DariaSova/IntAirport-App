/* 5a */

SELECT route_number 
FROM Airlines
JOIN Routes ON (Airlines.code = Routes.airline_code)
WHERE Airlines.code = "<AIRLINE_OF_CHOICE>";

/*5b*/

SELECT route_number
FROM (
	SELECT route_number
	FROM OutgoingRoutes
	WHERE destination = "<CITY_OF_CHOICE>"
	UNION ALL
	SELECT route_number
	FROM IncomingRoutes
	WHERE source = "<CITY_OF_CHOICE>"
	);

/*5c*/

SELECT id
FROM (
	SELECT id
	FROM Departures
	WHERE 24*ABS(dep_Time - to_date('<DATE_OF_CHOICE>', 'YYYY-MM-DD hh24:mi') ) <= 1
	UNION ALL
	SELECT id
	FROM Arrivals
	WHERE 24*ABS(arr_Time - to_date('<DATE_OF_CHOICE>', 'YYYY-MM-DD hh24:mi') ) <= 1	
);

/*5d*/

SELECT p.id, p.name, p.date_of_birth, p.place_of_birth, p.gov_issued_id
FROM Passengers p
WHERE p.arr_ID = "<FLIGHT_OF_CHOICE>" OR p.dep_ID = "<FLIGHT_OF_CHOICE>";

/*5e*/

SELECT id
FROM Baggage
WHERE passenger_id = "<PASSENGER_ID_OF_CHOICE>"

/*5f*/

SELECT * FROM (
	SELECT id 
	FROM Gates
	WHERE status = 0
) 
WHERE ROWNUM <= 1;

/*5g*/

With flight AS(
	SELECT id 
	FROM <ARRIVALS OR DEPARTURES> flights
	WHERE flights.id = "<FLIGHT_ID_OF_CHOICE>"
)
UPDATE <ARRIVALS OR DEPARTURES>
SET status = "done"
WHERE id= "<FLIGHT_ID_OF_CHOICE>";

SELECT gate
FROM <ARRIVALS OR DEPARTURES>
WHERE id = flight.gate;


 
