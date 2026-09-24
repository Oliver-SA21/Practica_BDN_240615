/* CREACION DE USUARIOS REMOTOS */
CREATE USER IF NOT EXISTS 'oliver.sanchez'@'%' IDENTIFIED BY '240615';
CREATE USER IF NOT EXISTS 'marco.ramirez'@'%' IDENTIFIED BY '123456';
CREATE USER IF NOT EXISTS 'josue.olarte'@'%' IDENTIFIED BY '240107';
CREATE USER IF NOT EXISTS 'diego.garrido'@'%' IDENTIFIED BY '240709';
CREATE USER IF NOT EXISTS 'jhon.j'@'%' IDENTIFIED BY '240080';

/* ASIGNACION DE PRIVILEGIOS DIRECTOS */
GRANT ALL PRIVILEGES ON *.* TO 'oliver.sanchez'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON db_test_7b.* TO 'josue.olarte'@'%';

/* CREACION DE ROLES */
CREATE ROLE IF NOT EXISTS 'superadmin';
CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'user_not_registered';

/* PRIVILEGIOS DE LOS ROLES */
GRANT ALL PRIVILEGES ON *.* TO 'superadmin';
GRANT ALL PRIVILEGES ON db_test_7b.* TO 'admin';
GRANT SELECT, INSERT, UPDATE ON db_test_7b.tb_users TO 'support';
GRANT SELECT, INSERT, UPDATE ON db_test_7b.tb_products TO 'support';
GRANT SELECT, INSERT, UPDATE ON db_test_7b.tb_products TO 'seller';

/* ASIGNACION DE ROLES A LOS USUARIOS */
GRANT 'superadmin' TO 'oliver.sanchez'@'%';
GRANT 'admin' TO 'marco.ramirez'@'%';
GRANT 'support' TO 'josue.olarte'@'%';
GRANT 'seller' TO 'diego.garrido'@'%';
GRANT 'buyer' TO 'jhon.j'@'%';

/* ROLES PREDETERMINADOS */
SET DEFAULT ROLE 'superadmin' TO 'oliver.sanchez'@'%';
SET DEFAULT ROLE 'admin' TO 'marco.ramirez'@'%';
SET DEFAULT ROLE 'support' TO 'josue.olarte'@'%';
SET DEFAULT ROLE 'seller' TO 'diego.garrido'@'%';
SET DEFAULT ROLE 'buyer' TO 'jhon.j'@'%';

/* VERIFICACION */
SELECT "Los usuarios y privilegios han sido creados correctamente" AS mensaje;