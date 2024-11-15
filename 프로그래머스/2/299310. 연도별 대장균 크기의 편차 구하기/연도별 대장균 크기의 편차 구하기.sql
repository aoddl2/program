with yearly_max as (
    select
        year(differentiation_date) as year,
        max(size_of_colony) as max_size
    from ecoli_data
    group by year(differentiation_date)
),
colony_deviation as (
    select
        a.id,
        year(a.differentiation_date) as year,
        b.max_size - a.size_of_colony as year_dev
    from ecoli_data a
    join yearly_max b
    on year(a.differentiation_date) = b.year
)
select
    year,
    year_dev,
    id
from colony_deviation
order by year asc, year_dev asc;

