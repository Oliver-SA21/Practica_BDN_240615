LOAD DATA LOCAL INFILE 'C:/Users/osanc/Desktop/Escuala/Cuatrimestres/Septimo Cuatrimestre/Optativa I. Base de Datos en la Nube/Unidad 1/Practica_BDN_240615/seeds/productos_5000.csv'
INTO TABLE tb_products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(ID, SKU, name, description, current_price, current_stock, status, creation_date, last_update);