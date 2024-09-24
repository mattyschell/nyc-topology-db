psql -v v1=$NYCTOPOPASSWORD -f ./sql/create-users.sql
export PGUSER=nyctopo
export PGPASSWORD=$NYCTOPOPASSWORD
psql -f ./definition/create-database.sql
export PGDATABASE=nyctopo
psql -f ./sql/setup-database.sql
psql -f ./sql/create-schemas.sql
psql -f ./data/all.sql
psql -f ./topo-data/all.sql
