USE [Estudos]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProntoSocorro]') AND type in (N'U'))
DROP TABLE [dbo].[ProntoSocorro]
GO

CREATE TABLE [dbo].[ProntoSocorro]
(	[Id] [int] IDENTITY(1,1) NOT NULL
,	[Nome] [varchar](50) NOT NULL
,	[Latitude] [varchar](50) NOT NULL
,	[Longitude] [varchar](50) NOT NULL
,	[Ativo] [varchar](1) NOT NULL
,	[NomeImpressora] [varchar](50) NOT NULL
,	[NomeImpressoraPulseira] [varchar](50) NOT NULL
,	[SetorMV] [int] NOT NULL
,	[DistanciaCheckin] [int] NOT NULL
,	CONSTRAINT [IX_ProntoSocorro] UNIQUE NONCLUSTERED 
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