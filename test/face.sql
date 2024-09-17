with gishq as (
select ST_SETSRID(ST_GeomFromText('POINT(988208 191860)'),2263) as geom
), nullisland as (
select ST_SETSRID(ST_GeomFromText('POINT(0 0)'),2263) as geom
)
SELECT 
    count(topology.GetFaceContainingPoint('gotham',(select geom from gishq)))    
   ,topology.GetFaceContainingPoint('gotham',(select geom from nullisland)) 
;