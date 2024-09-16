select topology.AddTopoGeometryColumn('gotham'
                                     ,'nyc'
                                     ,'communitydistrict'
                                     ,'topo'
                                     ,'polygon');
update 
    communitydistrict
set 
    topo = topology.toTopoGeom(geom, 'gotham', 1);
