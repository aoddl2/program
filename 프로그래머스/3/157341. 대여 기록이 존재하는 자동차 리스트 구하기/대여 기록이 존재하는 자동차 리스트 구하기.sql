select distinct a.car_id
from car_rental_company_car a
join
     car_rental_company_rental_history b
on a.car_id = b.car_id
where a.car_type = '세단'
      and to_char(b.start_date, 'yyyymm') = '202210'
order by a.car_id desc;