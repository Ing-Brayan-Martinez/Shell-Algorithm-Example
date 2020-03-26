db.createUser(
  {
    user: "admin",
    pwd: "12345678",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ],
    mechanisms:[  
	  "SCRAM-SHA-1"
	]
  }
);
