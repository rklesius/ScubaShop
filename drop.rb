
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.open('scubashop.db')


db.execute("DROP TABLE divers")
db.execute("DROP Table dive_trips")
db.execute("DROP TABLE employees")

db.execute <<SQL
  create table divers(
      did int,
      email varchar[50],
      password varchar[20],
      dname varchar[50],
      cert_lvl int, 
      dtid int
  )
SQL

db.execute <<SQL
create table employees(
 EID int,
 E_name varchar[50],
 Salary int,
 Title varchar[50],
 Yrs_worked int,
 Email varchar[50]
);
SQL

db.execute <<SQL
create table dive_trips(
  DTID int,
  Location varchar[50],
  Max_depth int,
  Cert_level_req int,
  EID int,
  Cost_per_diver float 
);
SQL

