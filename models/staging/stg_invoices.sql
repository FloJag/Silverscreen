select month, movie_id, location_id, min(total_invoice_sum) as total_price
from {{ source("silverscreen", "invoices") }}
group by month, movie_id, location_id
