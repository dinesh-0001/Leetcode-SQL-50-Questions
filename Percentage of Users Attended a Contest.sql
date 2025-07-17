SELECT c.contest_id, ROUND((Count(c.user_id)/(select count(user_id) from Users))*100,2) as percentage
from Register c
Group BY contest_id
order by percentage desc,contest_id