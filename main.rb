require 'sinatra' 
require 'sqlite3'
require_relative 'lib/insertions.rb'
require_relative 'lib/other.rb'
require 'pry'

get '/' do 
  haml :index
end

get '/airline-new' do
  haml :airline_new
end

post '/airline' do
  haml :airline_added
end

get '/airline-routes' do
  haml :airline_routes
end

post '/show-airline-routes' do
  haml :show_airline_routes
end

get '/city-routes' do
    haml :city_routes
end

post '/show-city-routes' do
end

get '/flight-done' do
    haml :flights_done
end

post '/show-flight-done' do
	haml :show_flight_done
end

get '/flight-passengers' do
    haml :flight_passengers
end

post '/show-flight-passengers' do
end

post '/free-gate' do
  haml :show_free_gate
end

get '/show-free-gate' do
  haml :free_gate
end

get '/passenger-baggage' do
  haml :passenger_baggage
end

post '/show-passenger-baggage' do
  haml :show_passenger_baggage
end

get '/time-flights' do
  haml :time_flights
end

post '/show-time-flights' do
end

get '/route-new' do
  haml :route_new
end

post '/route' do
  haml :route_added
end

get '/flight-new' do
  haml :flight_new
end

post '/flight' do
  haml :flight_added
end

