select
    concat('Project ',project.id) as name,
    sum(worker.salary *DATEDIFF(MONTH, project.start_date, project.finish_date)) as price from project_worker
left join worker on worker.id = project_worker.worker_id
left join project on project.id = project_worker.project_id
group by name
order by price desc