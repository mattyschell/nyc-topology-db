psql -t -v v1=$NYCTOPOPASSWORD -f ./sql/create-users.sql
export PGUSER=nyctopo
export PGPASSWORD=$NYCTOPOPASSWORD
psql -t -f ./sql/create-database.sql
export PGDATABASE=nyctopo
psql -t -f ./sql/setup-database.sql
psql -t -f ./sql/create-schemas.sql
psql -t -f ./data/all.sql
psql -t -f ./topo-data/all.sql
