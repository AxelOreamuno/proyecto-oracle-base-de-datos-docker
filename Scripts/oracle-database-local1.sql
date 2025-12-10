CREATE TABLE persona (
    id VARCHAR2(10) primary key,
    nombre VARCHAR2(30),
    edad NUMBER
);

CREATE TABLE factura (
    id_factura NUMBER PRIMARY KEY,
    fecha DATE,
    monto NUMBER
);

INSERT INTO persona (id, nombre, edad) VALUES ('1', 'Juan Perez', 30);
INSERT INTO persona (id, nombre, edad) VALUES ('2', 'Ana Gomez', 25);
INSERT INTO persona (id, nombre, edad) VALUES ('3', 'Maria Gomez', 25);
INSERT INTO persona (id, nombre, edad) VALUES ('4', 'Prueba', 35);
COMMIT;

select * from persona;

select * from factura;
