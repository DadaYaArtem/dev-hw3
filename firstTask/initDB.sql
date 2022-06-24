CREATE TABLE skills(
     id IDENTITY PRIMARY KEY NOT NULL,
     branch VARCHAR(50) CHECK (branch IN ('Java', 'C++', 'C#', 'JS')) NOT NULL,
     skill VARCHAR(50) CHECK (skill IN ('Junior', 'Middle', 'Senior')) NOT NULL
);

 CREATE TABLE developers(
    id IDENTITY PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age TINYINT NOT NULL
);

CREATE TABLE skills_developers(
    skill_id BIGINT NOT NULL,
    developer_id BIGINT NOT NULL,
    PRiMARY KEY(skill_id, developer_id),
    FOREIGN KEY (skill_id) REFERENCES skills(id),
    FOREIGN KEY (developer_id) REFERENCES developers(id)
);

CREATE TABLE projects(
    id IDENTITY PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    budget INT NOT NULL
);

CREATE TABLE developers_projects(
    developer_id BIGINT NOT NULL,
    project_id BIGINT NOT NULL,
    PRiMARY KEY(developer_id, project_id),
    FOREIGN KEY (developer_id) REFERENCES developers(id),
    FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE customers(
    id IDENTITY NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE project_customers(
    customer_id BIGINT NOT NULL,
    project_id BIGINT NOT NULL,
    PRiMARY KEY(project_id, customer_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE companies(
    id IDENTITY NOT NULL,
    name VARCHAR(20) NOT NULL,
    CEO VARCHAR(20) NOT NULL
);

CREATE TABLE projects_companies(
    company_id BIGINT NOT NULL,
    project_id BIGINT NOT NULL,
    PRiMARY KEY(company_id, project_id),
    FOREIGN KEY (company_id) REFERENCES companies(id),
    FOREIGN KEY (project_id) REFERENCES projects(id)
);