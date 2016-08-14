require 'sinatra' 
require 'sinatra/content_for'
require 'sqlite3'
require_relative 'lib/insertions.rb'
require_relative 'lib/other.rb'
require 'pry'

get '/' do 
  haml :index
end

get '/airline-new' do
  haml :'airlines/airline_new'
end

post '/airline' do
  haml :'airlines/airline_added'
end

get '/airline-routes' do
  haml :'airlines/airline_routes'
end

post '/show-airline-routes' do
  haml :'airlines/show_airline_routes'
end

get '/city-routes' do
  haml :'routes/city_routes'
end

post '/show-city-routes' do
  haml :'routes/show_city_routes'
end

get '/flight-done' do
  haml :'flights/flights_done'
end

post '/show-flight-done' do
  haml :'flights/show_flights_done'
end

get '/flight-passengers' do
  haml :'flights/flight_passengers'
end

post '/show-flight-passengers' do
  haml :'flights/show_flight_passengers'
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
  haml :'flights/time_flights'
end

post '/show-time-flights' do
  haml :'flights/show_time_flights'
end

get '/route-new' do
  haml :'routes/route_new'
end

post '/route' do
  haml :'routes/route_added'
end

get '/flight-new' do
  haml :'flights/flight_new'
end

post '/flight' do
  haml :'flights/flight_added'
end

get '/delete-route' do
  haml :'routes/delete_route'
end

post '/show-delete-route' do
  haml :'routes/show_delete_route'
end
