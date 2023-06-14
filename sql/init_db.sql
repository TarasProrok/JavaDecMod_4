CREATE TABLE worker (
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name CHARACTER VARYING NOT NULL,
	birthday DATE,
	level ENUM('Trainee', 'Junior', 'Middle', 'Senior') DEFAULT 'Trainee' NOT NULL,
	salary INTEGER,
	CONSTRAINT worker_check_birthday CHECK("BIRTHDAY" > DATE '1900-01-01'),
	CONSTRAINT worker_check_name CHECK((CHAR_LENGTH("NAME") >= 2) AND (CHAR_LENGTH("NAME") <= 1000)),
	CONSTRAINT worker_check_salary CHECK(("SALARY" >= 100) AND ("SALARY" <= 100000))
);


CREATE TABLE client (
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name CHARACTER VARYING NOT NULL,
	CONSTRAINT client_check_name CHECK((CHAR_LENGTH("NAME") >= 2) AND (CHAR_LENGTH("NAME") <= 1000))
);


CREATE TABLE project (
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	client_id INTEGER,
	start_date DATE,
	finish_date DATE,
	CONSTRAINT project_fk_client FOREIGN KEY (client_id) REFERENCES CLIENT(id),
	CONSTRAINT project_check_date CHECK("FINISH_DATE" >= "START_DATE")
);

CREATE TABLE project_worker (
	project_id INTEGER,
	worker_id INTEGER,
	CONSTRAINT project_fk_project FOREIGN KEY (project_id) REFERENCES project(id),
	CONSTRAINT project_fk_worker FOREIGN KEY (worker_id) REFERENCES worker(id),
	CONSTRAINT project_primary_key PRIMARY KEY (project_id, worker_id)
);