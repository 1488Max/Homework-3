Create table developer
(
    id identity primary key,
    name        varchar(100),
    sex         varchar(100)
);
Create table company
(
    id identity primary key,
    name      varchar(100),
    area      varchar(100)
);

Create table customer
(
    id identity primary key,
    name       varchar(100),
    surname    varchar(100)
);
Create table skill
(
    id    identity primary key,
    technology varchar(100),
    skill      varchar(100)
);


CREATE table developer_skill
(
    developer_id BIGINT not null,
    skill_id     BIGINT not null,
    PRIMARY KEY (developer_id, skill_id),
    FOREIGN KEY (developer_id) REFERENCES developer (id),
    FOREIGN KEY (skill_id) REFERENCES skill (id)
);
Create table project
(
    id   identity primary key,
    name        varchar(100),
    description varchar(100),
    customer_id BIGINT,
    company_id  BIGINT,
    foreign key (customer_id) REFERENCES customer (id),
    foreign key (company_id) REFERENCES company (id)
);

CREATE table developer_project
(
    developer_id BIGINT not null,
    project_id   BIGINT not null,
    PRIMARY KEY (developer_id, project_id),
    FOREIGN KEY (developer_id) REFERENCES developer (id),
    FOREIGN KEY (project_id) REFERENCES project (id)
);

ALTER TABLE skill
    ADD CONSTRAINT technologies_names
        Check (TECHNOLOGY IN ('Java', 'C++', 'C#', 'JS'));

ALTER TABLE skill
    ADD CONSTRAINT skills_levels
        Check (SKILL IN ('Senior', 'Middle', 'Junior'));
