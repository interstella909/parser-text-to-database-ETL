CREATE DATABASE parser;
USE parser;

CREATE TABLE factura (
    id INT NOT NULL AUTO_INCREMENT,
    numero_factura VARCHAR(20) NOT NULL,
    numero_cliente VARCHAR(20) NOT NULL,
    fecha DATE NOT NULL,
    tipo_moneda VARCHAR(3) NOT NULL,
    total_items INT NOT NULL,
    total_neto DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE producto (
    id INT NOT NULL AUTO_INCREMENT,
    factura_id INT NOT NULL,
    producto_id VARCHAR(20) NOT NULL,
    antiguedad INT NOT NULL,
    cantidad INT NOT NULL,
    valor_neto DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (factura_id) REFERENCES factura(id)
);

CREATE TABLE log_actions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action VARCHAR(255),
    description VARCHAR(255)
);

CREATE TABLE log_errors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    error VARCHAR(255),
    description VARCHAR(255)
);

