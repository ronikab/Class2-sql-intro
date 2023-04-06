-- What was the last team (and year) to play at U.S. Cellular Field?

select max(year), name from teams where park='U.S. Cellular Field' group by name;

-- Expected result:
--
-- +------+-------------------+
-- | 2017 | Chicago White Sox |
-- +------+-------------------+


