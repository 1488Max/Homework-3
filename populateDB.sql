INSERT into COMPANY (NAME, AREA) VALUES
('Samsung', 'Technology Development' ),
('Asus', 'Technology Development' ),
('Apple', 'Technology Development' );

INSERT into CUSTOMER (name, surname) VALUES
('Max', 'Parker' ),
('Igor', 'Prokopenko' ),
('Andrew', 'Tate' );

INSERT into DEVELOPER (name, sex) VALUES
('Nix','male' ),
('OLeg', 'male' ),
('Volodya', 'male' );

INSERT into DEVELOPER (name, sex) VALUES
('Nix','male' ),
('OLeg', 'male' ),
('Volodya', 'male' );

INSERT into SKILL (technology, skill) VALUES
('Java','Senior' ),
('C++', 'Senior' ),
('C#', 'Senior' ),
('JS', 'Senior' ),
('Java','Middle' ),
('C++', 'Middle' ),
('C#', 'Middle' ),
('JS', 'Middle' ),
('Java','Junior' ),
('C++', 'Junior' ),
('C#', 'Junior' ),
('JS', 'Junior' );

INSERT INTO PROJECT(name, description, customer_id, company_id) VALUES
('S20','New phone project',1,1),
('V30','New phone project',1,1),
('B40','New phone project',3,2),
('C50','New phone project',2,3),
('Z60','New phone project',3,3);

INSERT INTO DEVELOPER_PROJECT(developer_id, project_id)  VALUES
(1,1),
(2,5),
(1,2),
(2,1),
(3,1);

INSERT INTO DEVELOPER_SKILL(developer_id, SKILL_ID)  VALUES
(1,1),
(2,1),
(1,8),
(3,1),
(2,9);



