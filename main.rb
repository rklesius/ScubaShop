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
  erb :diver
end

#showing information for a dive master (employee)
get '/dive-master' do
  erb :employee
end

get '/dive-by-depth' do
  @depth = params[:depth]
  erb :divebydepth
end

get '/find-divers' do
  @cert = params[:cert]
  erb :finddiver
end

get '/roster' do
  erb :roster
end

get '/ads' do
  erb :ad
end

get '/earnings' do
  erb :earnings
end

get '/potential-divers/:cert' do
  @cert = params[:cert]
  erb :potentialdivers
end