select
    date_trunc('month', date) as month,
    'nj_002' as location,
    movie_id,
    sum(ticket_amount) as tickets_sold,
    sum(total_earned) as total_revenue
from {{ source("silverscreen", "nj_002") }}
group by month, movie_id, location
