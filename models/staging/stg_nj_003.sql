select
    date_trunc('month', timestamp) as month,
    details as movie_id,
    'nj_003' as location,
    sum(amount) as tickets_sold,
    sum(total_value) as total_revenue
from {{ source("silverscreen", "nj_003") }}
where product_type = 'ticket'
group by month, movie_id, location
