SELECT user_id, round(avg(case when action = 'confirmed' then 1 else 0 end), 2) as confirmation_rate
FROM Confirmations
RIGHT JOIN Signups using(user_id)
GROUP BY user_id