USE centro_idiomas_web;

CREATE TABLE roles (
    id_role INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    id_role INT NOT NULL,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    status ENUM('active', 'inactive', 'blocked') NOT NULL DEFAULT 'active',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_users_roles
        FOREIGN KEY (id_role) REFERENCES roles(id_role)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE levels (
    id_level INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(5) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    order_number INT NOT NULL UNIQUE,
    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active'
);

CREATE TABLE students (
    id_student INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL UNIQUE,
    id_level INT NOT NULL,
    enrollment_date DATE NOT NULL,
    academic_status ENUM('in_progress', 'completed', 'suspended') NOT NULL DEFAULT 'in_progress',
    CONSTRAINT fk_students_users
        FOREIGN KEY (id_user) REFERENCES users(id_user)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_students_levels
        FOREIGN KEY (id_level) REFERENCES levels(id_level)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE exercise_categories (
    id_category INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE exercises (
    id_exercise INT AUTO_INCREMENT PRIMARY KEY,
    id_level INT NOT NULL,
    id_category INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    duration_minutes INT NOT NULL,
    xp_points INT NOT NULL,
    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_exercises_levels
        FOREIGN KEY (id_level) REFERENCES levels(id_level)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_exercises_categories
        FOREIGN KEY (id_category) REFERENCES exercise_categories(id_category)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE student_exercises (
    id_student_exercise INT AUTO_INCREMENT PRIMARY KEY,
    id_student INT NOT NULL,
    id_exercise INT NOT NULL,
    score DECIMAL(5,2),
    completed BOOLEAN NOT NULL DEFAULT FALSE,
    completed_at DATETIME,
    CONSTRAINT fk_student_exercises_students
        FOREIGN KEY (id_student) REFERENCES students(id_student)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_student_exercises_exercises
        FOREIGN KEY (id_exercise) REFERENCES exercises(id_exercise)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE student_progress (
    id_progress INT AUTO_INCREMENT PRIMARY KEY,
    id_student INT NOT NULL,
    id_level INT NOT NULL,
    progress_percentage DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    completed_units INT NOT NULL DEFAULT 0,
    total_units INT NOT NULL DEFAULT 0,
    last_updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_student_progress_students
        FOREIGN KEY (id_student) REFERENCES students(id_student)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_student_progress_levels
        FOREIGN KEY (id_level) REFERENCES levels(id_level)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);