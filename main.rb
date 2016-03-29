require 'sinatra' 
require 'sqlite3'

get '/' do 
  haml :index
end
