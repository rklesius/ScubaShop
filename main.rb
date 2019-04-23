# runs the logic of the webpage

require 'sinatra'
require 'sqlite3'

configure do
  enable :sessions
end


get '/' do
  erb :login
end

get '/login' do  #TODO: define sessions
  @email = params[:username]
  @password = params[:password]
  erb :signin

end

#showing information for a diver
get '/diver' do

end

#showing information for a dive master (employee)
get '/dive-master' do

end