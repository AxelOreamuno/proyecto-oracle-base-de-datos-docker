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

select * from persona;

CREATE DATABASE LINK local1_link
CONNECT TO system IDENTIFIED BY "Local123"
USING '(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=172.17.0.3)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)))';

DROP DATABASE LINK local1_link;

CREATE MATERIALIZED VIEW mv_persona
BUILD IMMEDIATE
REFRESH ON DEMAND
AS
SELECT * FROM persona@local1_link;


EXEC DBMS_MVIEW.REFRESH('mv_persona');

SELECT * FROM mv_persona;

create or replace procedure ingresar_factura(
    p_id_factura number,
    p_fecha date,
    p_monto number
) as
Begin 
    insert into factura (id_factura, fecha, monto) 
    values (p_id_factura, p_fecha, p_monto);
    commit;
end;
/

CREATE OR REPLACE PROCEDURE copiar_facturas_a_local1 AS
BEGIN
    INSERT INTO factura@local1_link (id_factura, fecha, monto)
    SELECT id_factura, fecha, monto
    FROM factura f2
    WHERE NOT EXISTS (
        SELECT 1 FROM factura@local1_link f1
        WHERE f1.id_factura = f2.id_factura
    );
    COMMIT;
END;
/

BEGIN
    ingresar_factura(12, TO_DATE('2024-11-12','YYYY-MM-DD'),1500);
END;
/

Begin 
    copiar_facturas_a_local1;
End;
/

select * from factura;














