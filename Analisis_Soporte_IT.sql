-- Crear tabla de usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Departamento VARCHAR(50)
);

-- Crear tabla de incidentes
CREATE TABLE Incidentes (
    IncidenteID INT PRIMARY KEY,
    UsuarioID INT,
    Descripcion VARCHAR(255),
    Prioridad VARCHAR(20),
    Estado VARCHAR(20),
    FechaRegistro DATETIME,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);

INSERT INTO Usuarios VALUES (1, 'Ana García', 'Finanzas'), (2, 'Carlos Ruiz', 'RRHH'), (3, 'Lucía Pérez', 'TI');

INSERT INTO Incidentes VALUES (101, 1, 'Error de acceso a SAP', 'Alta', 'Abierto', '2026-06-25 09:00:00'),
                              (102, 2, 'Configuración de correo', 'Media', 'Cerrado', '2026-06-26 10:30:00'),
                              (103, 1, 'Impresora sin conexión', 'Baja', 'En Proceso', '2026-06-26 14:00:00');


select * from Incidentes
where Estado != 'cerrado'
order by FechaRegistro desc


select Prioridad, count (*) as 'TOTALINCIDENTES'
from Incidentes
GROUP BY PRIORIDAD

SELECT u.nombre, i.descripcion, I.estado
FROM Incidentes as I
join Usuarios as U
on i.UsuarioID = u.UsuarioID;








