#scubashop.rb controls the flow of the whole project and queries the database

require 'sinatra'
require 'sqlite3'

#inintalize the database

db = SQLite3::Database.open('scubashop.db')

employee_rows = db.execute <<SQL
create table employees(
 EID int,
 E_name varchar[50],
 Salary int,
 Title varchar[50],
 Yrs_worked int,
 Email varchar[50]
);
SQL

get '/divers' do
  erb :divers
end
