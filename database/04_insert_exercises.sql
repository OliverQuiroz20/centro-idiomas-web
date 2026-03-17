USE centro_idiomas_web;

INSERT INTO exercises (id_level, id_category, title, description, duration_minutes, xp_points, status) VALUES
-- A1
(1, 4, 'Saludos y presentaciones', 'Practica frases básicas para saludar y presentarte.', 10, 30, 'active'),
(1, 1, 'Mi rutina diaria', 'Lee un texto corto sobre actividades cotidianas.', 12, 40, 'active'),
(1, 5, 'Verbo to be', 'Ejercicios básicos sobre el verbo to be.', 15, 50, 'active'),
(1, 3, 'Números y edades', 'Escucha diálogos simples e identifica información básica.', 8, 35, 'active'),

-- A2
(2, 1, 'Culturas del mundo y comida', 'Lectura sobre costumbres y vocabulario relacionado con alimentos.', 15, 50, 'active'),
(2, 4, 'Conversación en una cafetería', 'Practica expresiones frecuentes en una conversación cotidiana.', 10, 75, 'active'),
(2, 5, 'Past perfect tense', 'Ejercicios guiados sobre estructura y uso del pasado perfecto.', 20, 100, 'active'),
(2, 3, 'Reporte del clima', 'Escucha información simple y responde preguntas.', 12, 60, 'active'),

-- B1
(3, 1, 'Viajes y experiencias', 'Comprende textos sobre experiencias personales y viajes.', 18, 70, 'active'),
(3, 5, 'First conditional', 'Practica estructuras para situaciones reales en el futuro.', 16, 80, 'active'),
(3, 3, 'Entrevista de trabajo', 'Escucha una entrevista y responde preguntas de comprensión.', 14, 75, 'active'),
(3, 4, 'Opiniones y argumentos', 'Expresa acuerdos, desacuerdos y opiniones personales.', 20, 90, 'active'),

-- B2
(4, 1, 'Tecnología y sociedad', 'Analiza un texto complejo y responde preguntas inferenciales.', 22, 90, 'active'),
(4, 5, 'Passive voice advanced', 'Practica estructuras avanzadas de voz pasiva.', 18, 95, 'active'),
(4, 3, 'Podcast académico', 'Escucha un fragmento y responde preguntas detalladas.', 16, 85, 'active'),
(4, 4, 'Debate guiado', 'Desarrolla argumentos elaborados sobre un tema social.', 20, 100, 'active'),

-- C1
(5, 1, 'Artículo académico', 'Analiza ideas principales, tono y propósito del autor.', 25, 110, 'active'),
(5, 5, 'Inversion and emphasis', 'Practica estructuras avanzadas para mayor precisión.', 22, 105, 'active'),
(5, 3, 'Conferencia profesional', 'Escucha una charla y responde preguntas complejas.', 20, 100, 'active'),
(5, 4, 'Presentación formal', 'Organiza y presenta ideas de manera clara y sofisticada.', 24, 115, 'active');