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

get '/route-new' do
  haml :route_new
end

post '/route' do
  haml :route_added
end


