#scubashop.rb controls the flow of the whole project and queries the database

require 'sinatra'
require 'sqlite3'

#inintalize the database

db = SQLite3::Database.open('scubashop.db')

dive_trips_rows = db.execute <<SQL
create table dive_trips(
  DTID int,
  Location varchar[50],
  Max_depth int,
  Cert_level_req int,
  EID int,
  Cost_per_diver float 
);
SQL

get '/divers' do
  erb :divers
end
