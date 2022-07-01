
Create table developer(
    developerID identity primary key,
    name varchar(100),
    sex varchar(100)
);
Create table company
(
    companyID identity primary key,
    name varchar(100),
    area varchar(100)
);

Create table customer(
    customerID identity primary key,
    name varchar(100),
    surname varchar(100)
);
Create table skill(
    skillID identity primary key,
    technology varchar(100),
    skill varchar(100)
);


CREATE table developer_skill(
    developer_ID BIGINT not null,
    skill_ID BIGINT not null,
    PRIMARY KEY (developer_ID,skill_ID),
    FOREIGN KEY (developer_ID) REFERENCES developer(developerID),
    FOREIGN KEY (skill_ID) REFERENCES skill(skillID)
);
Create table project(
    projectID identity primary key,
    name varchar(100),
    description varchar(100),
    customer_ID BIGINT,
    company_ID BIGINT,
    foreign key (customer_ID) REFERENCES customer(customerID),
    foreign key (company_ID) REFERENCES company(companyID)
);

CREATE table developer_project(
    developer_ID BIGINT not null,
    project_ID BIGINT not null,
    PRIMARY KEY (developer_ID,project_ID),
    FOREIGN KEY (developer_ID) REFERENCES developer(developerID),
    FOREIGN KEY (project_ID) REFERENCES project(projectID)
);

ALTER TABLE SKILL
ADD CONSTRAINT technologies_names
Check (TECHNOLOGY IN ('Java','C++','C#','JS'));

ALTER TABLE SKILL
ADD CONSTRAINT skills_levels
Check (SKILL IN ('Senior','Middle','Junior'));









