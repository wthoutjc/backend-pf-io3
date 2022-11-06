USE `io-db`;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `students` CASCADE;

DROP TABLE IF EXISTS `calificacion` CASCADE;

DROP TABLE IF EXISTS `preguntas` CASCADE;

CREATE TABLE `students`(
	`k_students` BIGINT NOT NULL,
	`n_nombre` LONGTEXT NOT NULL,
	`n_apellido` LONGTEXT NOT NULL,
	`n_correo` LONGTEXT NOT NULL,
    `n_proyecto` LONGTEXT NOT NULL
);

CREATE TABLE `calificacion`(
	`k_students` BIGINT NOT NULL,
	`q_calificacion` BIGINT NOT NULL
);

CREATE TABLE `preguntas`(
	`k_students` BIGINT NOT NULL,
	`k_preguntas` BIGINT NOT NULL,
	`q_respuesta` BIGINT NOT NULL,
	`n_tiempo` VARCHAR(255) NOT NULL
);

/* PRIMARY KEYS */

ALTER TABLE `students` ADD CONSTRAINT `PK_k_students` PRIMARY KEY (k_students);

/* CHECKS */

/* ALTER TABLE `users` ADD CONSTRAINT `CK_n_categoria` CHECK (n_categoria in ('Admin', 'Vendedor')); */

SET FOREIGN_KEY_CHECKS=1; 
	