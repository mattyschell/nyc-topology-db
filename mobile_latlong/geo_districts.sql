-- this cant be right
-- pulling (face_id,3) from topo
-- then unnesting and taking every other row?
create or replace view 
    geo_districts 
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
               communitydistrict a)
    ) 
where 
    mod(row_num, 2) <> 0;