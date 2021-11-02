USE [Estudos]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mensagem]') AND type in (N'U'))
DROP TABLE [dbo].[Mensagem]
GO

CREATE TABLE [dbo].[Mensagem]
(	[Id] [int] IDENTITY(1,1) NOT NULL
,	[Nome] [varchar](50) NOT NULL
,	[Conteudo] [varchar](2000) NOT NULL
,	[Ativo] [varchar](1) NOT NULL
,	CONSTRAINT [IX_Mensagem] UNIQUE NONCLUSTERED 
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