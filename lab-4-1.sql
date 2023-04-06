-- How many lifetime hits does Barry Bonds have?

select a.first_name, a.last_name, sum(b.hits) 
from players a
left join stas b
on a.id=b.id
group by first_name, last_name;

-- Expected result:
-- 2935


