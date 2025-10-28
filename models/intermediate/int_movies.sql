select * from {{ ref('stg_invoices') }} as i
Left join {{ ref('stg_movie_catalogue') }} as m
using(movie_id)