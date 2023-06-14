select concat('Project ',id) as name, DATEDIFF(MONTH, start_date, finish_date) as month_count from project
group by id
having month_count = (
select max(DATEDIFF(MONTH, start_date, finish_date)) from project)