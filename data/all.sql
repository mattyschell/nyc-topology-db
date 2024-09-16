set search_path to nyc, public;
set client_min_messages TO warning;
\set QUIET 1
\i ./data/communitydistrict.sql;