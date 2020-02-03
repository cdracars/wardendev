ddev -s mongo exec mongo -u db -p db --authenticationDatabase admin <<EOF
use warden
db.createUser(
  {
    user: "db",
    pwd: "db",
       "roles" : [
                {
                        "role" : "readWrite",
                        "db" : "warden"
                },
                {
                        "role" : "userAdminAnyDatabase",
                        "db" : "admin"
                }
        ]
  }
);
EOF
