
-- use of select & where & from ................... 
SELECT * FROM my_database.smartphones
where brand_name = 'apple';

-- use of select,where & from...........
SELECT * FROM my_database.smartphones
where brand_name = 'apple' and price < 30000;

-- use of IN 
SELECT * FROM my_database.smartphones
where brand_name IN ('apple','samsung');

-- use of EXSIST
SELECT brand_name, model, price, camra
FROM Smartphones s
WHERE EXISTS (
    SELECT 1
    FROM Accessories a
    WHERE a.compatible_model = s.model
);

