USE [Estudos]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnidadeProntoSocorro]') AND type in (N'U'))
ALTER TABLE [dbo].[UnidadeProntoSocorro] 
	DROP CONSTRAINT [FK_UnidadeProntoSocorro_Unidade]
ALTER TABLE [dbo].[UnidadeProntoSocorro] 
	DROP CONSTRAINT [FK_UnidadeProntoSocorro_ProntoSocorro]
DROP TABLE [dbo].[UnidadeProntoSocorro]
GO

CREATE TABLE [dbo].[UnidadeProntoSocorro]
(	[IdUnidade] [int] NOT NULL
,	[IdProntoSocorro] [int] NOT NULL
,	[Ativo] [varchar](1) NOT NULL
)
ON [PRIMARY]

ALTER TABLE [dbo].[UnidadeProntoSocorro]  
WITH CHECK
	ADD CONSTRAINT [FK_UnidadeProntoSocorro_ProntoSocorro]
	FOREIGN KEY([IdProntoSocorro])
REFERENCES [dbo].[ProntoSocorro] ([Id])

ALTER TABLE [dbo].[UnidadeProntoSocorro] 
CHECK CONSTRAINT [FK_UnidadeProntoSocorro_ProntoSocorro]

ALTER TABLE [dbo].[UnidadeProntoSocorro] 
WITH CHECK
	ADD CONSTRAINT [FK_UnidadeProntoSocorro_Unidade]
	FOREIGN KEY([IdUnidade])
REFERENCES [dbo].[Unidade] ([Id])

ALTER TABLE [dbo].[UnidadeProntoSocorro] 
CHECK CONSTRAINT [FK_UnidadeProntoSocorro_Unidade]