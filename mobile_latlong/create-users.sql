create user if not exists
    mobile_latlong 
with password :'v1';
alter user 
    mobile_latlong
set 
    search_path 
to 
    mobile_latlong,nyc,topology,public;