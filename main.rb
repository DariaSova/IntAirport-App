require 'sinatra' 
require 'sqlite3'

get '/' do 
  haml :index
end

get '/airline-new' do
  haml :airline_new
end
