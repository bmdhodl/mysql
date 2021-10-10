select     
    COUNT(CASE when email like '%gmail.com' then 'gmail' else NULL end) as gmail,
    COUNT(CASE when email like '%yahoo.com' then 'yahoo' else NULL end) as yahoo,
    COUNT(CASE when email like '%hotmail.com' then 'hotmail' else NULL end) as hotmail,
    count(CASE when email not like '%hotmail.com' or email not like '%gmail.com' then 'other' else NULL end) as hotmail
from users;

select
    case
        when email like '%gmail.com' then 'gmail'
        when email like '%yahoo.com' then 'yahoo'
        when email like '%hotmail.com' then 'hotmail'
        else 'other'
    end as provider,
    count(*) as total_users
from users
group by provider
order by total_users desc;