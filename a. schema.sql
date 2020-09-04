/******** CREAR BASE DE DATOS ********/

CREATE DATABASE hotel_tsdb
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Colombia.1252'
    LC_CTYPE = 'Spanish_Colombia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

/******** AGREGAR EXTENCION A LA BASE DE DATOS ********/

CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;