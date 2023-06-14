INSERT INTO worker
	(name, birthday, level, salary)
VALUES
	('Ivanchenko', '1981-01-01', 'Trainee', 450),
	('Prorok', '1992-02-22', 'Trainee', 500),
	('Vovchenko', '2004-12-07', 'Trainee', 500),
	('Shevchenko', '1978-07-05', 'Trainee', 515),
	('Prokopchiuk', '2006-10-05', 'Junior', 1300),
	('Franko', '2003-04-17', 'Trainee', 350),
	('Ukrainka', '1981-06-17', 'Middle', 2400),
	('Mazepa', '1993-04-25', 'Middle', 2400),
	('Grushevskiy', '1991-06-10', 'Senior', 7400),
	('Jonsonuk', '2000-03-23', 'Senior', 7400)
;


INSERT INTO client
	(name)
VALUES
	('Pershiy'), ('Drugiy'), ('Tretiy'), ('Chetvertiy'), ('Piatyiy')
;

INSERT INTO project
	(client_id, start_date, finish_date)
VALUES
	(SELECT id FROM client WHERE name = 'Pershiy', '2022-02-02', '2022-06-23'),
	(SELECT id FROM client WHERE name = 'Drugiy', '2022-07-11', '2023-01-30'),
	(SELECT id FROM client WHERE name = 'Drugiy', '2022-02-03', '2022-10-29'),
	(SELECT id FROM client WHERE name = 'Tretiy', '2018-04-15', '2024-12-30'),
	(SELECT id FROM client WHERE name = 'Tretiy', '2021-11-04', '2022-11-02'),
	(SELECT id FROM client WHERE name = 'Chetvertiy', '2019-04-18', '2025-02-04'),
	(SELECT id FROM client WHERE name = 'Chetvertiy', '2024-12-04', '2025-12-31'),
	(SELECT id FROM client WHERE name = 'Chetvertiy', '2025-11-10', '2026-05-12'),
	(SELECT id FROM client WHERE name = 'Piatyiy', '2021-11-10', '2021-10-25'),
	(SELECT id FROM client WHERE name = 'Piatyiy', '2020-06-17', '2021-06-18'),
	(SELECT id FROM client WHERE name = 'Piatyiy', '2020-09-29', '2022-03-30')
;


SET @MaxWorkerCount = 5;
SET @MinWorkerCount = 1;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 0) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 1) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 2) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 3) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 4) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 5) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 6) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 7) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 8) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
    SELECT (SELECT id FROM project LIMIT 1 OFFSET 9) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;