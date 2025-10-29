select
    i.month,
    m.movie_id,
    m.movie_title,
    m.genre,
    lower(i.location_id) as location_id,
    i.total_price
from {{ ref("stg_invoices") }} as i
left join {{ ref("stg_movie_catalogue") }} as m using (movie_id)
