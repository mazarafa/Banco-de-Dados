USE [SPMedicalGroup_Manhã]
GO
/****** Object:  Table [dbo].[Clinica]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clinica](
	[ID_Clinica] [int] IDENTITY(1,1) NOT NULL,
	[NomeFantasia] [varchar](255) NOT NULL,
	[RazaoSocial] [varchar](255) NOT NULL,
	[HorarioFuncionamento] [varchar](255) NOT NULL,
	[CNPJ] [char](14) NOT NULL,
	[ID_Endereco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Clinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[ID_Consulta] [int] IDENTITY(1,1) NOT NULL,
	[DataConsulta] [datetime] NOT NULL,
	[Descricao] [varchar](255) NULL,
	[ID_Medico] [int] NULL,
	[ID_Situacao] [int] NULL,
	[ID_Prontuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Consulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecos](
	[ID_Endereco] [int] IDENTITY(1,1) NOT NULL,
	[Rua] [varchar](255) NOT NULL,
	[Numero] [smallint] NOT NULL,
	[Cidade] [varchar](255) NOT NULL,
	[Estado] [varchar](255) NOT NULL,
	[CEP] [char](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Endereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especializacao]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especializacao](
	[ID_Especializacao] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Especializacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[ID_Medico] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[CRM] [char](7) NOT NULL,
	[ID_Clinica] [int] NULL,
	[ID_Especializacao] [int] NULL,
	[ID_Usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prontuarios]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prontuarios](
	[ID_Prontuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[RG] [char](9) NOT NULL,
	[CPF] [char](11) NOT NULL,
	[DataNacimento] [date] NOT NULL,
	[Telefone] [varchar](255) NOT NULL,
	[ID_Usuario] [int] NULL,
	[ID_Endereco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Prontuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Situacao]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Situacao](
	[ID_Situacao] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Situacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[ID_TipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Senha] [varchar](255) NOT NULL,
	[ID_TipoUsuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clinica] ON 

INSERT [dbo].[Clinica] ([ID_Clinica], [NomeFantasia], [RazaoSocial], [HorarioFuncionamento], [CNPJ], [ID_Endereco]) VALUES (1, N'Clinica Possarle', N'SP Medical Group', N'24h', N'86400902000130', 1)
SET IDENTITY_INSERT [dbo].[Clinica] OFF
SET IDENTITY_INSERT [dbo].[Consulta] ON 

INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (1, CAST(N'2020-01-20T15:00:00.000' AS DateTime), N'aaaaaa', 3, 1, 7)
INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (2, CAST(N'2020-01-06T10:00:00.000' AS DateTime), N'aaaaaa', 2, 2, 2)
INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (3, CAST(N'2020-02-07T11:00:00.000' AS DateTime), N'aaaaaa', 2, 1, 3)
INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (4, CAST(N'2019-02-06T10:00:00.000' AS DateTime), N'aaaaaa', 2, 1, 2)
INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (5, CAST(N'2019-02-07T11:00:00.000' AS DateTime), N'aaaaaa', 1, 2, 4)
INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (6, CAST(N'2020-03-08T15:00:00.000' AS DateTime), N'aaaaaa', 3, 3, 7)
INSERT [dbo].[Consulta] ([ID_Consulta], [DataConsulta], [Descricao], [ID_Medico], [ID_Situacao], [ID_Prontuario]) VALUES (7, CAST(N'2020-03-09T11:00:00.000' AS DateTime), N'aaaaaa', 1, 3, 4)
SET IDENTITY_INSERT [dbo].[Consulta] OFF
SET IDENTITY_INSERT [dbo].[Enderecos] ON 

INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (1, N'Av. Barão de Limeira', 532, N'São Paulo', N'SP', N'1023000 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (2, N'Rua Estado de Israel', 240, N'São Paulo', N'SP', N'4022000 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (3, N'Av. Paulista', 1578, N'Bela Vista', N'SP', N'1310200 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (4, N'Av. Ibirapuera', 2877, N'São Paulo', N'SP', N'4029200 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (5, N'Rua Vitória', 120, N'Barueri', N'SP', N'6402030 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (6, N'R. Ver. Geraldo de Camargo', 66, N'Ribeirão Pires', N'SP', N'9405380 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (7, N'Alameda dos Arapanés', 945, N'Indianópolis', N'SP', N'4524001 ')
INSERT [dbo].[Enderecos] ([ID_Endereco], [Rua], [Numero], [Cidade], [Estado], [CEP]) VALUES (8, N'Rua São Antônio', 232, N'Barueri', N'SP', N'6407140 ')
SET IDENTITY_INSERT [dbo].[Enderecos] OFF
SET IDENTITY_INSERT [dbo].[Especializacao] ON 

INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (1, N'Acupuntura')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (2, N'Anestesiologia')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (3, N'Angiologia')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (4, N'Cardiologia')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (5, N'Cirurgia Cardiovascular')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (6, N'Cirurgia da Mão')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (7, N'Cirurgia do Aparelho Digestivo')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (8, N'Cirurgia Geral')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (9, N'Cirurgia Pediatrica')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (10, N'Cirurgia Plástica')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (11, N'Cirurgia Torácica')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (12, N'Cirurgia Vascular')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (13, N'Dermatologia')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (16, N'Pediatria')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (17, N'Psiquiatria')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (14, N'Radioterapia')
INSERT [dbo].[Especializacao] ([ID_Especializacao], [Titulo]) VALUES (15, N'Urologia')
SET IDENTITY_INSERT [dbo].[Especializacao] OFF
SET IDENTITY_INSERT [dbo].[Medicos] ON 

INSERT [dbo].[Medicos] ([ID_Medico], [Nome], [CRM], [ID_Clinica], [ID_Especializacao], [ID_Usuario]) VALUES (1, N'Ricardo Lemos', N'54356SP', 1, 2, 1)
INSERT [dbo].[Medicos] ([ID_Medico], [Nome], [CRM], [ID_Clinica], [ID_Especializacao], [ID_Usuario]) VALUES (2, N'Roberto Possarle', N'53452SP', 1, 17, 2)
INSERT [dbo].[Medicos] ([ID_Medico], [Nome], [CRM], [ID_Clinica], [ID_Especializacao], [ID_Usuario]) VALUES (3, N'Helena Strada', N'65463SP', 1, 16, 3)
SET IDENTITY_INSERT [dbo].[Medicos] OFF
SET IDENTITY_INSERT [dbo].[Prontuarios] ON 

INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (1, N'Ligia', N'435225435', N'94839859000', CAST(N'1983-10-13' AS Date), N'(11)3456-7654', 4, 2)
INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (2, N'Alexandre', N'326543457', N'73556944057', CAST(N'2001-07-23' AS Date), N'(11)98765-6543', 5, 3)
INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (3, N'Fernando', N'546365253', N'16839338002', CAST(N'1978-10-10' AS Date), N'(11)97208-4453', 6, 4)
INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (4, N'Henrique', N'543663625', N'14332654765', CAST(N'1985-10-13' AS Date), N'(11)3456-6543', 7, 5)
INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (5, N'Jõao', N'325444441', N'91305348010', CAST(N'1975-08-27' AS Date), N'(11)7656-6377', 8, 6)
INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (6, N'Bruno', N'545662667', N'79799299004', CAST(N'1972-03-21' AS Date), N'(11)95436-8769', 9, 7)
INSERT [dbo].[Prontuarios] ([ID_Prontuario], [Nome], [RG], [CPF], [DataNacimento], [Telefone], [ID_Usuario], [ID_Endereco]) VALUES (7, N'Mariana', N'545662668', N'13771913039', CAST(N'2018-03-05' AS Date), N'(11)2345-6789', 10, 8)
SET IDENTITY_INSERT [dbo].[Prontuarios] OFF
SET IDENTITY_INSERT [dbo].[Situacao] ON 

INSERT [dbo].[Situacao] ([ID_Situacao], [Titulo]) VALUES (3, N'Agendada')
INSERT [dbo].[Situacao] ([ID_Situacao], [Titulo]) VALUES (2, N'Cancelada')
INSERT [dbo].[Situacao] ([ID_Situacao], [Titulo]) VALUES (1, N'Realizada')
SET IDENTITY_INSERT [dbo].[Situacao] OFF
SET IDENTITY_INSERT [dbo].[TipoUsuario] ON 

INSERT [dbo].[TipoUsuario] ([ID_TipoUsuario], [Titulo]) VALUES (1, N'Admnistrador')
INSERT [dbo].[TipoUsuario] ([ID_TipoUsuario], [Titulo]) VALUES (2, N'Médico')
INSERT [dbo].[TipoUsuario] ([ID_TipoUsuario], [Titulo]) VALUES (3, N'Paciente')
SET IDENTITY_INSERT [dbo].[TipoUsuario] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (1, N'ricardo.lemos@spmedicalgroup.com.br', N'abc123', 2)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (2, N'roberto.possarle@spmedicalgroup.com.br', N'abc123', 2)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (3, N'helena.souza@spmedicalgroup.com.br', N'abc123', 2)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (4, N'ligia@gmail.com', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (5, N'alexandre@gmail.com', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (6, N'fernando@gmail.com', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (7, N'henrique@gmail.com', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (8, N'joao@hotmail.com', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (9, N'bruno@gmail.com', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (10, N'mariana@outlook', N'abc123', 3)
INSERT [dbo].[Usuarios] ([ID_Usuario], [Email], [Senha], [ID_TipoUsuario]) VALUES (11, N'fernandostrada@gmail.com', N'abc123', 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Clinica__AA57D6B404E33901]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Clinica] ADD UNIQUE NONCLUSTERED 
(
	[CNPJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Especial__7B406B569D7E1899]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Especializacao] ADD UNIQUE NONCLUSTERED 
(
	[Titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Medicos__C1F887FFAC7A7D6A]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Medicos] ADD UNIQUE NONCLUSTERED 
(
	[CRM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Prontuar__321537C822533B17]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Prontuarios] ADD UNIQUE NONCLUSTERED 
(
	[RG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Prontuar__C1F89731DD0E319A]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Prontuarios] ADD UNIQUE NONCLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Situacao__7B406B567808F2DC]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Situacao] ADD UNIQUE NONCLUSTERED 
(
	[Titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TipoUsua__7B406B560AF81646]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[TipoUsuario] ADD UNIQUE NONCLUSTERED 
(
	[Titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__A9D10534648652FA]    Script Date: 12/02/2020 09:44:12 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clinica]  WITH CHECK ADD FOREIGN KEY([ID_Endereco])
REFERENCES [dbo].[Enderecos] ([ID_Endereco])
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[Medicos] ([ID_Medico])
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD FOREIGN KEY([ID_Prontuario])
REFERENCES [dbo].[Prontuarios] ([ID_Prontuario])
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD FOREIGN KEY([ID_Situacao])
REFERENCES [dbo].[Situacao] ([ID_Situacao])
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD FOREIGN KEY([ID_Clinica])
REFERENCES [dbo].[Clinica] ([ID_Clinica])
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD FOREIGN KEY([ID_Especializacao])
REFERENCES [dbo].[Especializacao] ([ID_Especializacao])
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuarios] ([ID_Usuario])
GO
ALTER TABLE [dbo].[Prontuarios]  WITH CHECK ADD FOREIGN KEY([ID_Endereco])
REFERENCES [dbo].[Enderecos] ([ID_Endereco])
GO
ALTER TABLE [dbo].[Prontuarios]  WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuarios] ([ID_Usuario])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([ID_TipoUsuario])
REFERENCES [dbo].[TipoUsuario] ([ID_TipoUsuario])
GO
/****** Object:  StoredProcedure [dbo].[SPMedGroupSelectProntuario]    Script Date: 12/02/2020 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPMedGroupSelectProntuario]
AS
	BEGIN
		SELECT Nome, Email, CONVERT(VARCHAR(10), DataNacimento, 101) AS DataNacimento,
		YEAR(GETDATE())-YEAR(DataNacimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNacimento)*32+DAY(DataNacimento),1,0) AS Idade,
		Telefone, RG, CPF, Enderecos.Rua, Enderecos.Numero, Enderecos.Cidade, Enderecos.Estado, Enderecos.CEP
		FROM Prontuarios
		INNER JOIN Usuarios ON Prontuarios.ID_Usuario = Usuarios.ID_Usuario
		INNER JOIN Enderecos ON Prontuarios.ID_Endereco = Enderecos.ID_Endereco;
	END
GO
