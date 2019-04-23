
require 'sqlite3'

db = SQLite3::Database.open('../scubashop.db')

begin
  db.execute("DROP TABLE divers")
  db.execute("DROP Table dive_trips")
  db.execute("DROP TABLE employees")
rescue SQLite3::Exception => e
  puts "Running table creation...."
end

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

puts "Table creation successful"

#inintialize some rows
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [1, 'rachelklesius@gmail.com', '1234', 'Rachel Klesius', 2, 0 ])
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [2, 'edduffy@gmail.com', 'password1', 'Edward Duffy', 3, 0 ])
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [3, 'willfink@gmail.com', 'cat1234', 'William Fink', 5, 1 ])
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [4, 'samreese@gmail.com', 'sealions', 'Sam Reese', 4, 2 ])

db.execute("INSERT INTO employees(EID, E_name, Salary, Title, Yrs_worked, Email) VALUES(?, ?, ?, ?, ?, ?)",
           [3, 'John', 15000, 'Sir', 5, 'johnsmith@gmail.com' ])
db.execute("INSERT INTO employees(EID, E_name, Salary, Title, Yrs_worked, Email) VALUES(?, ?, ?, ?, ?, ?)",
           [1, 'Michael', 15000, 'Mid', 3, 'mikedavis@gmail.com' ])
db.execute("INSERT INTO employees(EID, E_name, Salary, Title, Yrs_worked, Email) VALUES(?, ?, ?, ?, ?, ?)",
           [2, 'Tyler', 20000, 'Lead', 7, 'raggle1221@gmail.com' ])
db.execute("INSERT INTO employees(EID, E_name, Salary, Title, Yrs_worked, Email) VALUES(?, ?, ?, ?, ?, ?)",
           [4, 'Sarah', 13500, 'Newhire', 1, 'sarahfuss@gmail.com' ])

db.execute("INSERT INTO dive_trips(DTID, Location, Max_depth, Cert_level_req, EID, Cost_per_diver) VALUES(?,?,?,?,?,?)",
           [0, "Gulf of Mexico",300,0,2,150.25])
db.execute("INSERT INTO dive_trips(DTID, Location, Max_depth, Cert_level_req, EID, Cost_per_diver) VALUES(?,?,?,?,?,?)",
           [1, "Gulf of Mexico",200,3,3,150.25])
db.execute("INSERT INTO dive_trips(DTID, Location, Max_depth, Cert_level_req, EID, Cost_per_diver) VALUES(?,?,?,?,?,?)",
           [5, "Lake Apopka",100,1,2,45])
db.execute("INSERT INTO dive_trips(DTID, Location, Max_depth, Cert_level_req, EID, Cost_per_diver) VALUES(?,?,?,?,?,?)",
           [2, "Tampa Bay",170,4,1,35])

puts "Data inserted into table"


