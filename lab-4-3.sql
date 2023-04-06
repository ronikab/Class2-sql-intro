-- Who hit the most home runs in 2019, and what team did they play for?

-- select id from teams where year=2019;

select name, first_name, last_name, sum(home_runs)
from players a
inner join stats b on a.id=b.player_id
inner join teams c on b.team_id=c.id
where year=2019
group by first_name, last_name
order by sum(home_runs) DESC
limit 1;



-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


