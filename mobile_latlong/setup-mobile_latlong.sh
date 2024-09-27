psql -v v1=$MLPASSWORD -f ./mobile_latlong/create-users.sql
psql -f ./mobile_latlong/create-schemas.sql
psql -f ./mobile_latlong/geo_districts.sql