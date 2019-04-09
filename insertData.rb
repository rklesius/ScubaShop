
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.open('scubashop.db')

#inintialize some rows in divers
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [1, 'rachelklesius@gmail.com', '1234', 'Rachel Klesius', 2, 0 ])
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [2, 'edduffy@gmail.com', 'password1', 'Edward Duffy', 3, 0 ])
db.execute("INSERT INTO divers(did, email, password, dname, cert_lvl, dtid) VALUES(?, ?, ?, ?, ?, ?)",
           [3, 'willfink@gmail.com', 'cat1234', 'William Fink', 5, 0 ])
