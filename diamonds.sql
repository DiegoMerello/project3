SELECT dc2.color as "color", dc3.cut as "cut", 
dc.clarity as "clarity", dt.price as "price", dc4.city as "city", dd.'depth' as 'depth',dt.carat as 'carat', dd."table" as 'table',
dd.x as x, dd.y as y, dd.z as z
FROM diamonds_properties dp 
INNER JOIN diamonds_clarity dc on dc.clarity_id = dp.clarity_id
INNER JOIN diamonds_color dc2 on dc2.color_id =dp.color_id  
INNER JOIN diamonds_cut dc3 on dc3.cut_id = dp.cut_id 
INNER JOIN diamonds_transactional dt on dt.index_id = dp.index_id 
INNER JOIN diamonds_city dc4 on dc4.city_id = dt.city_id
inner join diamonds_dimensions dd on dd.index_id = dp.index_id 