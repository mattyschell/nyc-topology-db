set search_path to nyc,topology,public;
set client_min_messages TO warning;
\set QUIET 1
-- layer_id order must match data/all.sql
\i ./topo-data/communitydistrict.sql;