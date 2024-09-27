psql -v v1=$NYCTOPOPASSWORD -f ./definition/create-users.sql
export PGUSER=nyctopo
export PGPASSWORD=$NYCTOPOPASSWORD
psql -f ./definition/create-database.sql
export PGDATABASE=nyctopo
psql -f ./definition/setup-database.sql
psql -f ./definition/create-schemas.sql
psql -f ./data/all.sql
psql -f ./topo-data/all.sql
