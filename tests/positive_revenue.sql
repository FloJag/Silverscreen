with invalid_rows as (
    select * from mart_profitability
    where total_revenue < 0
)

select * from invalid_rows