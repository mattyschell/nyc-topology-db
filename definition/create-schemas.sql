create schema if not exists nyc;
grant usage on schema 
    nyc 
to 
    public;
revoke create on schema 
    public 
from 
    public;