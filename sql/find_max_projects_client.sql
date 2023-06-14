select client.name, count(project.id) as cnt  from client
left join project on project.client_id =client.id
group by client.name
having cnt = (
select max(cnt) as project_count from (
select client.name, count(project.id) as cnt  from client
left join project on project.client_id = client.id
group by client.name))