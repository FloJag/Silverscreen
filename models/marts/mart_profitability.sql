select
    r.movie_id,
    s.movie_title,
    s.genre,
    r.month,
    s.location_id,
    r.tickets_sold,
    r.total_revenue,
    s.total_price,
    round(r.total_revenue/s.total_price,2) as gross_margin
    
from {{ ref("int_monthly_rev") }} r
inner join
    {{ ref("int_movies") }} s
    on r.movie_id = s.movie_id
    and r.location_id = s.location_id
    and r.month = s.month