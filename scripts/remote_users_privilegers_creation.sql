/* Creacion de usuarios remotos */
CREATE USER 'oliver.sanchez'@'%' IDENTIFIED BY '240615';
CREATE USER 'nombre.apellido'@'%' IDENTIFIED BY 'sumatricula';
CREATE USER 'rene.david'@'%' IDENTIFIED BY '240107';

/* Asignar los privilegios de super usuarios IMPORTANTE: SOLO NOSOTROSJAJA */
GRAND ALL PRIVILEGES ON *.* TO 'oliver.sanchez'@'%';

/* Asignar privilegios de seleccion, insercion, acutalizacion y eleminacion al usuario*/
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'rene.david'@'%';

/* Creacion de roles para el sistema de ECOMMERCE */
CREATE ROLE 'admin';
CREATE ROLE 'seller';
CREATE ROLE 'buyer';
CREATE ROLE 'support';
CREATE ROLE 'common';
CREATE ROLE 'user_not_registered';

/* Asignacion de privilegios a los roles */
GRANT ALL PRIVILEGES ON *.* TO 'admin';
GRANT SELECT, INSERT, UPDATE ON *.* TO 'support';

/* Asignacion de roles a los usuarios */
GRANT 'admin' TO 'oliver.sanchez'@'%';
GRANT 'support' TO 'rene.david'@'%';