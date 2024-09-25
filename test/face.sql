with gishq as (
select st_point(988208,191860,2263) as geom
), nullisland as (
select st_point(0,0,2263) as geom
)
SELECT 
    count(topology.GetFaceContainingPoint('gotham',(select geom from gishq)))    
   ,topology.GetFaceContainingPoint('gotham',(select geom from nullisland)) 
;