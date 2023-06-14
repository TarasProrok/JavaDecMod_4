select  'YOUNGEST' as type, name, birthday from worker
group by name
having DATEDIFF(DAY, birthday , CURRENT_DATE) = (
select  min(DATEDIFF(DAY, birthday , CURRENT_DATE)) max_days from worker)

union all

select  'ELDEST' as type, name, birthday from worker
group by name
having DATEDIFF(DAY, birthday , CURRENT_DATE) = (
select  max(DATEDIFF(DAY, birthday , CURRENT_DATE)) max_days from worker)