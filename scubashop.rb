#scubashop.rb controls the flow of the whole project and queries the database

require 'sinatra'
require 'sqlite3'

#inintalize the database

db = SQLite3::Database.new('scubashop.db')

#create table in database
diver_rows = db.execute <<-SQL
  create table divers(
      did int,
      email varchar[50],
      password varchar[20],
      dname varchar[50],
      cert_lvl int, 
      dtid int
  );
SQL


get '/divers' do
  erb :divers
end


