# runs the logic of the webpage

require 'sinatra'
require 'sqlite3'

get '/' do
  erb :divers
end