
CREATE TABLE USUARIO (
  id_usuario INT PRIMARY KEY,
  Nombre VARCHAR(100),
  email VARCHAR(100),
  preferencias TEXT
);


CREATE TABLE RUTA (
  id_ruta INT PRIMARY KEY,
  origen VARCHAR(100),
  destino VARCHAR(100),
  tipo_transporte VARCHAR(50),
  duracion INT,
  accesibilidad BOOLEAN
);


CREATE TABLE PARADA (
  id_parada INT PRIMARY KEY,
  nombre VARCHAR(100),
  ubicacion VARCHAR(150),
  id_ruta INT,
  FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta)
);


CREATE TABLE RUTASFAVORITAS (
  id_favorito INT PRIMARY KEY,
  id_usuario INT,
  id_ruta INT,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta)
);
