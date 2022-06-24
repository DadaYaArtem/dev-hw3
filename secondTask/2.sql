SELECT
    project_id,
    name,
    sum(developers.salary) 
FROM
    developers
JOIN
    DEVELOPERS_PROJECTS on DEVELOPERS_PROJECTS.DEVELOPER_ID = developers.id
JOIN
    PROJECTS on DEVELOPERS_PROJECTS.PROJECT_ID = PROJECTS.ID 
GROUP BY
    PROJECTS.name
ORDER BY
    sum(developers.salary) desc
LIMIT 1