ALTER TABLE PROJECTS ADD cost INT DEFAULT 0;

UPDATE PROJECTS SET cost = 200000 WHERE id = 1;
UPDATE PROJECTS SET cost = 180000 WHERE id = 2;
UPDATE PROJECTS SET cost = 300 WHERE id = 3;
UPDATE PROJECTS SET cost = 10000 WHERE id = 4;