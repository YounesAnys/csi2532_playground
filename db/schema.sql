
CREATE TABLE department (
  dept_name varchar(20),
  building varchar(15),
  budget numeric(12,2) check (budget > 0),
  primary key (dept_name)
);

CREATE TABLE course (course_id    varchar(8),
  title varchar(50),
  dept_name varchar(20),
  credits numeric(2,0) check (credits > 0),
  primary key (course_id),
  foreign key (dept_name) references department
  on delete set null
);