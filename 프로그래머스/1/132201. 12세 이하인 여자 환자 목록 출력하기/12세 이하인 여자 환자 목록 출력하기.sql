-- 환자이름, 환자번호, 성별코드, 나이, 전화번호
select pt_name, pt_no, gend_cd, age, nvl(tlno,'NONE') as tlno
from patient
where age <= 12
and gend_cd = 'W'
order by age desc, pt_name;