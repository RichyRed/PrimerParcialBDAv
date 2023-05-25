USE master_db;

CREATE DATABASE bd_medicamentos;

USE bd_medicamentos;

CREATE TABLE Medicamentos (
  IDMedicamento INT PRIMARY KEY,
  NombreMedicamento VARCHAR(50),
  Descripcion VARCHAR(200),
  Precio DECIMAL(10, 2)
);

CREATE TABLE Proveedores (
  IDProveedor INT PRIMARY KEY,
  NombreProveedor VARCHAR(50),
  Direccion VARCHAR(100),
  Telefono VARCHAR(20)
);

CREATE TABLE Insumo (
  IDInsumo INT PRIMARY KEY,
  NombreInsumo VARCHAR(50),
  Descripcion VARCHAR(200),
  Precio DECIMAL(10, 2)
);

CREATE TABLE Hospital (
  IDHospital INT PRIMARY KEY,
  NombreHospital VARCHAR(50),
  Direccion VARCHAR(50),
  Ciudad VARCHAR(50),
  Telefono VARCHAR(20)
);

CREATE TABLE Especialidad (
  IDEspecialidad INT PRIMARY KEY,
  NombreEspecialidad VARCHAR(50)
);

CREATE TABLE AdquisicionMedicamentos (
  IDAdquisicionMed INT PRIMARY KEY,
  IDMedicamento INT,
  IDProveedor INT,
  FechaAdquisicion DATE,
  CantidadAdquisicion DECIMAL(10, 2),
  FOREIGN KEY (IDMedicamento) REFERENCES Medicamentos(IDMedicamento),
  FOREIGN KEY (IDProveedor) REFERENCES Proveedores(IDProveedor)
);

CREATE TABLE AdquisicionInsumos (
  IDAdquisicionIn INT PRIMARY KEY,
  IDInsumo INT,
  IDProveedor INT,
  CantidadInsumos INT,
  FechaInsumos DATE,
  FOREIGN KEY (IDInsumo) REFERENCES Insumo(IDInsumo),
  FOREIGN KEY (IDProveedor) REFERENCES Proveedores(IDProveedor)
);

CREATE TABLE ServicioOftalmologia (
  IDServicio INT PRIMARY KEY,
  Nombre VARCHAR(50),
  IDEspecialidad INT,
  IDHospital INT,
  FOREIGN KEY (IDEspecialidad) REFERENCES Especialidad(IDEspecialidad),
  FOREIGN KEY (IDHospital) REFERENCES Hospital(IDHospital)
);

INSERT INTO Medicamentos (IDMedicamento, NombreMedicamento, Descripcion, Precio)
VALUES
(1, 'Paracetamol', 'Medicamento para aliviar el dolor y la fiebre', 2.99),
(2, 'Ibuprofeno', 'Antiinflamatorio y analgesico', 3.50),
(3, 'Omeprazol', 'Inhibidor de la produccion de acido en el estomago', 4.75),
(4, 'Amoxicilina', 'Antibiotico de amplio espectro', 5.20);

INSERT INTO Proveedores (IDProveedor, NombreProveedor, Direccion, Telefono)
VALUES
(1, 'Proveedor A', 'Calle 123, Ciudad A', '123-456-7890'),
(2, 'Proveedor B', 'Avenida XYZ, Ciudad B', '987-654-3210'),
(3, 'Proveedor C', 'Boulevard ABC, Ciudad C', '555-555-5555'),
(4, 'Proveedor D', 'Carretera 789, Ciudad D', '111-222-3333');

INSERT INTO Insumo (IDInsumo, NombreInsumo, Descripcion, Precio)
VALUES
(1, 'Jeringa', 'Jeringa esteril de uso medico', 1.99),
(2, 'Venda', 'Venda elastica para vendaje', 0.99),
(3, 'Gasas', 'Gasas esteriles para curaciones', 2.50),
(4, 'Guantes', 'Guantes de latex desechables', 0.75);

INSERT INTO Hospital (IDHospital, NombreHospital, Direccion, Ciudad, Telefono)
VALUES
(1, 'Hospital A', 'Calle Principal, Ciudad A', 'Ciudad A', '123-456-7890'),
(2, 'Hospital B', 'Avenida Central, Ciudad B', 'Ciudad B', '987-654-3210'),
(3, 'Hospital C', 'Boulevard Norte, Ciudad C', 'Ciudad C', '555-555-5555'),
(4, 'Hospital D', 'Carretera Este, Ciudad D', 'Ciudad D', '111-222-3333');

INSERT INTO Especialidad (IDEspecialidad, NombreEspecialidad)
VALUES
(1, 'Oftalmologia'),
(2, 'Cardiologia'),
(3, 'Dermatologia'),
(4, 'Pediatria');

INSERT INTO AdquisicionMedicamentos (IDAdquisicionMed, IDMedicamento, IDProveedor, FechaAdquisicion, CantidadAdquisicion)
VALUES
(1, 1, 1, '2022-01-15', 100),
(2, 2, 2, '2022-02-20', 50),
(3, 3, 3, '2022-03-25', 75),
(4, 4, 4, '2022-04-30', 120);

INSERT INTO AdquisicionInsumos (IDAdquisicionIn, IDInsumo, IDProveedor, CantidadInsumos, FechaInsumos)
VALUES
(1, 1, 1, 500, '2022-01-10'),
(2, 2, 2, 1000, '2022-02-15'),
(3, 3, 3, 800, '2022-03-20'),
(4, 4, 4, 1200, '2022-04-25');

INSERT INTO ServicioOftalmologia (IDServicio, Nombre, IDEspecialidad, IDHospital)
VALUES
(1, 'Servicio de Oftalmologia 1', 1, 1),
(2, 'Servicio de Oftalmologia 2', 1, 2),
(3, 'Servicio de Oftalmologia 3', 1, 3),
(4, 'Servicio de Oftalmologia 4', 1, 4);
