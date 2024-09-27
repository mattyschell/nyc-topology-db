-- this cant be right
-- pulling (face_id1,3) 
--         (face_id2,3) etc from topo
-- then unnesting and taking every other row?
create or replace view 
    mobile_latlong.geo_districts 
as
select 
    'COMMMUNITYDISTRICT' as layer_name
   ,commdist as feature_value
   ,face as face
from 
    (select *
           ,row_number() over () as row_num
     from (select 
               a.objectid
              ,a.commdist
              ,unnest(GetTopoGeomElementArray(a.topo)) as face
           from 
               nyc.communitydistrict a)
    ) 
where 
    mod(row_num, 2) <> 0;
--this doesnt work yet, more priv investigation required
--grant select on 
--    mobile_latlong.geo_districts 
--to
--    mobile_latlong;