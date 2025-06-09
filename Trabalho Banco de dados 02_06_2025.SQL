CREATE DATABASE estacionamento;

USE estacionamento;

CREATE TABLE Cliente(
 	cpf  VARCHAR(11) NOT NULL PRIMARY KEY,
	nome VARCHAR(60),
	dt_Nasc DATE
);
CREATE TABLE Modelo(
	Codmod INT NOT NULL PRIMARY KEY,
	desc2 VARCHAR(40)
);
CREATE TABLE Veiculo( 
	placa VARCHAR(8) NOT NULL PRIMARY KEY, 
	Modelo_codmod INT, 
	Cliente_cpf VARCHAR(11), 
	cor  VARCHAR(20), 
	FOREIGN KEY (Modelo_Codmod ) REFERENCES Modelo(Codmod), 
	FOREIGN KEY (Cliente_cpf) REFERENCES cliente(cpf) 
);
CREATE TABLE Patio(
	Numemo INT NOT NULL PRIMARY KEY,
	endereco VARCHAR(40),
	capacidade INT NOT NULL
);
CREATE TABLE estaciona(
	cod INT NOT NULL PRIMARY KEY,
	Patio_num INT,
	Veiculo_placa VARCHAR(8),
	DtEntrada DATE,
	DtSaida DATE,
	HrEntrada TIME,
	HrSaida TIME
);


INSERT INTO Cliente (cpf, nome, dt_Nasc) VALUES
('12345678901', 'Ana Souza', '1990-05-14'),
('98765432100', 'Carlos Mendes', '1985-10-30'),
('11122233344', 'Juliana Lima', '1992-03-21'),
('55566677788', 'Roberto Silva', '1980-12-10'),
('99988877766', 'Fernanda Rocha', '1995-07-08');

INSERT INTO Modelo (Codmod, desc2) VALUES
(1, 'Fiat Uno'),
(2, 'Honda Civic'),
(3, 'Chevrolet Onix'),
(4, 'Ford Ka'),
(5, 'Toyota Corolla');

INSERT INTO Veiculo (placa, Modelo_codmod, Cliente_cpf, cor) VALUES
('ABC1234', 1, '12345678901', 'Preto'),
('XYZ5678', 2, '98765432100', 'Branco'),
('JHG4321', 3, '11122233344', 'Prata'),
('LMN8765', 4, '55566677788', 'Vermelho'),
('QWE3456', 5, '99988877766', 'Azul');

INSERT INTO Patio (Numemo, endereco, capacidade) VALUES
(1, 'Rua A, 100', 50),
(2, 'Av. Central, 200', 30),
(3, 'Rua das Flores, 300', 40);

INSERT INTO estaciona (cod, Patio_num, Veiculo_placa, DtEntrada, DtSaida, HrEntrada, HrSaida) VALUES
(1, 1, 'ABC1234', '2025-05-30', '2025-05-30', '08:00:00', '12:00:00'),
(2, 1, 'XYZ5678', '2025-05-30', '2025-05-30', '09:15:00', '11:30:00'),
(3, 2, 'JHG4321', '2025-05-31', '2025-05-31', '10:00:00', '14:00:00'),
(4, 3, 'LMN8765', '2025-05-31', '2025-05-31', '07:45:00', '13:20:00'),
(5, 2, 'QWE3456', '2025-06-01', '2025-06-01', '11:00:00', '15:00:00');






























