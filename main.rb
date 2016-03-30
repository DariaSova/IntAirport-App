require 'sinatra' 
require 'sqlite3'
require 'pry'

get '/' do 
  haml :index
end

get '/airline-new' do
  haml :airline_new
end

post '/airline' do
  params[:name]
end
