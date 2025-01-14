SELECT warehouse_id, warehouse_name, address, nvl(freezer_yn, 'N') as freezer_yn
from food_warehouse
where warehouse_name like '%경기%'
order by 1;