select
    date_trunc('month', timestamp) as month,
    movie_id,
    'nj_001' as location_id,
    sum(ticket_amount) as tickets_sold,
    sum(transaction_total) as total_revenue
from {{ source("silverscreen", "nj_001") }}
group by month, movie_id, location_id
