USE centro_idiomas_web;

-- ROLES
INSERT INTO roles (name) VALUES 
('admin'),
('student');

-- LEVELS
INSERT INTO levels (code, name, description, order_number) VALUES
('A1', 'Beginner', 'Basic level', 1),
('A2', 'Elementary', 'Basic communication', 2),
('B1', 'Intermediate', 'Independent user', 3),
('B2', 'Upper Intermediate', 'Advanced communication', 4),
('C1', 'Advanced', 'Professional proficiency', 5);

-- CATEGORIES
INSERT INTO exercise_categories (name) VALUES
('Reading'),
('Writing'),
('Listening'),
('Speaking'),
('Grammar');

-- ADMIN USER
INSERT INTO users (id_role, full_name, email, password)
VALUES (1, 'Admin Principal', 'admin@goingbilingual.com', '123456');

-- STUDENT USER (Oliver)
INSERT INTO users (id_role, full_name, email, password)
VALUES (2, 'Oliver Quiros', 'oliver@goingbilingual.com', '123456');

-- STUDENT PROFILE
INSERT INTO students (id_user, id_level, enrollment_date)
VALUES (2, 2, CURDATE()); -- nivel A2