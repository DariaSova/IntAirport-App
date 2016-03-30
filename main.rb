require 'sinatra' 
require 'sqlite3'
require_relative 'lib/insertions.rb'
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
end

get '/flight-passengers' do
    haml :flight_passengers
end

post '/show-flight-passengers' do
end

get '/show-free-gates' do
end

get '/passenger-baggage' do
  haml :passenger_baggage
end

post '/show-passenger-baggage' do
end
