CREATE DATABASE SPMedicalGroup_Manh�;

USE SPMedicalGroup_Manh�;

CREATE TABLE Especializacao(
	ID_Especializacao	INT PRIMARY KEY IDENTITY,
	Titulo				VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE TipoUsuario (
	ID_TipoUsuario	INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Enderecos(
	ID_Endereco INT PRIMARY KEY IDENTITY,
	Rua			VARCHAR (255) NOT NULL,
	Numero		SMALLINT NOT NULL,
	Cidade		VARCHAR (255) NOT NULL,
	Estado		VARCHAR (255) NOT NULL,
	CEP			CHAR (8) NOT NULL
);

CREATE TABLE Situacao(
	ID_Situacao INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Clinica (	
	ID_Clinica				INT PRIMARY KEY IDENTITY,
	NomeFantasia			VARCHAR(255) NOT NULL,
	RazaoSocial				VARCHAR (255) NOT NULL,
	HorarioFuncionamento	VARCHAR (255) NOT NULL,
	CNPJ					CHAR (14) NOT NULL UNIQUE,
	ID_Endereco				INT FOREIGN KEY REFERENCES Enderecos (ID_Endereco)
);

CREATE TABLE Usuarios(
	ID_Usuario		INT PRIMARY KEY IDENTITY,
	Email			VARCHAR (255) NOT NULL UNIQUE,
	Senha			VARCHAR (255) NOT NULL,
	ID_TipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (ID_TipoUsuario)
);

CREATE TABLE Prontuarios (
	ID_Prontuario	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(255) NOT NULL,
	RG				CHAR (9) NOT NULL UNIQUE,
	CPF				CHAR (11) NOT NULL UNIQUE,
	DataNacimento	DATE NOT NULL,
	Telefone		VARCHAR (255) NOT NULL,
	ID_Usuario		INT FOREIGN KEY REFERENCES Usuarios (ID_Usuario),
	ID_Endereco		INT FOREIGN KEY REFERENCES Enderecos (ID_Endereco)
);

CREATE TABLE Medicos (
	ID_Medico			INT PRIMARY KEY IDENTITY,
	Nome				VARCHAR(255) NOT NULL,
	CRM					CHAR (7) NOT NULL UNIQUE,
	ID_Clinica			INT FOREIGN KEY REFERENCES Clinica (ID_Clinica),
	ID_Especializacao	INT FOREIGN KEY REFERENCES Especializacao (ID_Especializacao),
	ID_Usuario			INT FOREIGN KEY REFERENCES Usuarios (ID_Usuario)
);

CREATE TABLE Consulta (
	ID_Consulta		INT PRIMARY KEY IDENTITY,
	DataConsulta	DATETIME NOT NULL,
	Descricao		VARCHAR (255),
	ID_Medico		INT FOREIGN KEY REFERENCES Medicos (ID_Medico),
	ID_Situacao		INT FOREIGN KEY REFERENCES Situacao (ID_Situacao),
	ID_Prontuario	INT FOREIGN KEY REFERENCES Prontuarios (ID_Prontuario)
);