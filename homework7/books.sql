USE [bookdb]
GO
/****** Object:  Table [dbo].[books]    Script Date: 03-Feb-21 10:33:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[About] [nvarchar](max) NULL,
	[Pages] [smallint] NOT NULL,
	[Author] [nvarchar](200) NULL,
	[PublishedDate] [date] NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[books] ADD  CONSTRAINT [DF_books_Pages]  DEFAULT ((1)) FOR [Pages]
GO
ALTER TABLE [dbo].[books] ADD  CONSTRAINT [DF_books_PublishedDate]  DEFAULT (getdate()) FOR [PublishedDate]
GO
