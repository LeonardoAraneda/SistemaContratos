CREATE TABLE establecimientos(
    establecimiento VARCHAR(40),
    abreviacion VARCHAR(20),
    cod_deis INTEGER PRIMARY KEY
);

CREATE TABLE usuarios(
    nombre VARCHAR(40),
    apellido1 VARCHAR(40),
    apellido2 VARCHAR(40),
    run VARCHAR(10) PRIMARY KEY,
    perfil VARCHAR(40)
);

CREATE TABLE referentes(
    nombre VARCHAR(40),
    apellido1 VARCHAR(40),
    apellido2 VARCAHR(40),
    run VARCHAR(10) PRIMARY KEY,
    perfil VARCHAR(20)
);

CREATE TABLE proveedores(
    proveedores VARCHAR(40),
    rut VARCHAR(10) PRIMARY KEY,
    rep_legal VARCHAR(40),
    run_rep VARCHAR(10),
    direccion_nomb VARCHAR(50),
    direccion_num INT,
    comuna VARCHAR(40),
    region VARCHAR(40)
);

CREATE TABLE convenios(
    id_licitacion VARCHAR(40) PRIMARY KEY,
    convenio TEXT,
    proveedores TEXT,
    referente VARCHAR(40),
    vigencias DATE,
    monto INT,
    administrador VARCHAR(40)
);

CREATE TABLE resolucion_adjudicacion(
    num_res_exenta INT,
    date_make_doc DATE,
    adjudicacion TEXT,
    id_compra VARCHAR(40),
    empresa TEXT,
    rut_empresa VARCHAR(10),
    representante VARCHAR(40),
    rut_representante VARCHAR(10),
    nomb_direc_empresa VARCHAR(50),
    num_direc_empresa INT,
    nomb_direc_rep VARCHAR(50),
    num_direc_rep INT,
    presupuesto INT,
    inicio_contrato DATE,
    termino_contrato DATE,
    valor_multa INT
);

CREATE TABLE aprueba_contrato( --Hereda los datos de la tabla RESOLUCUÓN DE ADJUDICACIÓN, segun flujograma entregado por el cliente.
    num_res_exenta INT,
    date_make_doc DATE,
);

