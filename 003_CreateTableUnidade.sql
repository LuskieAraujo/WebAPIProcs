USE [Estudos]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unidade]') AND type in (N'U'))
DROP TABLE [dbo].[Unidade]
GO

CREATE TABLE [dbo].[Unidade]
(	[Id] [int] IDENTITY(1,1) NOT NULL
,	[Nome] [varchar](50) NOT NULL
,	[Ativo] [varchar](1) NOT NULL
,	[LogradouroCompleto] [varchar](200) NOT NULL
,	[Telefone] [varchar](12) NOT NULL
,	[OrigemMV] [int] NOT NULL
,	CONSTRAINT [IX_Unidade] UNIQUE NONCLUSTERED 
	(
		[Id] ASC
	)
	WITH
	(	PAD_INDEX = OFF
	,	STATISTICS_NORECOMPUTE = OFF
	,	IGNORE_DUP_KEY = OFF
	,	ALLOW_ROW_LOCKS = ON
	,	ALLOW_PAGE_LOCKS = ON
	,	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	) 
	ON [PRIMARY]
)
ON [PRIMARY]