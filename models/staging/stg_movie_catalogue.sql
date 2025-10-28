select
    movie_id,
    movie_title,
    studio,
    case when genre is null then 'Unkonwn' else genre end as genre

from {{ source("silverscreen", "movie_catalogue") }}
