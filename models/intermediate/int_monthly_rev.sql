select * from {{ ref('stg_nj_001') }}
UNION 
select * from {{ ref('stg_nj_002') }}
UNION 
select * from {{ ref('stg_nj_003') }}