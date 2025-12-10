# Proyecto de Bases de Datos – Oracle XE con Docker

Este proyecto utiliza **dos instancias de Oracle XE 21c** ejecutadas mediante contenedores Docker.  
El objetivo es implementar:

- Conexión entre dos bases de datos mediante **Database Link**  
- Consulta entre bases usando **Vista Materializada**  
- Copia controlada de facturas mediante un **procedimiento PL/SQL**  
- Uso de Docker para levantar y administrar ambas bases de datos

---

## 📦 Tecnologías utilizadas
- Docker Desktop  
- Oracle Database Express Edition 21.3.0  
- SQL Developer  
- PL/SQL  
- Materialized Views  
- Database Links  

---

## 🐳 1. Creación de contenedores con Docker
Ver guia en la carpeta dockers para la instalación de las dos instancias de oracle XE 21c

## 🗃️ 2. Estructura de tablas
Se han agregado en la carpeta de scripts los archivos correspondientes que se utilizaron para cada base de datos,
database link, prodecimientos almancenados y vistas materializadas(DB2 leyendo DB1)

## 3. Imagenes del proyecto

### Levantamos las instancias
<img width="921" height="489" alt="image" src="https://github.com/user-attachments/assets/10d4971c-d0e7-4bdb-8476-1f29ce238569" />


### Conexiones a las bases de datos
<img width="921" height="595" alt="image" src="https://github.com/user-attachments/assets/13bc34d9-18e6-4607-a124-7550b706e973" />
<img width="921" height="593" alt="image" src="https://github.com/user-attachments/assets/7336af2b-8b61-4868-b566-9705de752257" />

### Se insertan datos en la primera base de datos
<img width="921" height="337" alt="image" src="https://github.com/user-attachments/assets/56afe4b3-9ade-40dc-ac0d-08d4cfdcd5b1" />

### En la segunda base de datos todavia no hay datos debido a que no se ha ejecutado la vista materializada
<img width="921" height="330" alt="image" src="https://github.com/user-attachments/assets/6f984743-0c92-44ec-be1e-cb8c776e9487" />

### Luego de ejecutar la vista materializada
<img width="921" height="369" alt="image" src="https://github.com/user-attachments/assets/77091a71-9821-4c26-9be9-2c609e761b5a" />

### Procedimiento almacenado para insertar facturas en la base de datos 2
<img width="921" height="369" alt="image" src="https://github.com/user-attachments/assets/99d1930b-305d-4428-af61-baaf1c07c78d" />

### Copia de datos de facturas de base de datos dos a base de datos 1
Mediante un procedimiento almacenado se insertan las facturas en la base de datos 1 que solo existen en la base 
de datos 2.
<img width="921" height="811" alt="image" src="https://github.com/user-attachments/assets/0b4ac940-6613-4430-9981-32941702c78d" />



