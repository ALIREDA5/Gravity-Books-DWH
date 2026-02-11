USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Dim_book_author]    Script Date: 2/11/2026 3:05:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_book_author](
	[author_id] [int] NULL,
	[book_id] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_book_author]  WITH CHECK ADD  CONSTRAINT [fk_author_b] FOREIGN KEY([author_id])
REFERENCES [dbo].[Dim_author] ([author_id])
GO

ALTER TABLE [dbo].[Dim_book_author] CHECK CONSTRAINT [fk_author_b]
GO

ALTER TABLE [dbo].[Dim_book_author]  WITH CHECK ADD  CONSTRAINT [fk_book_a] FOREIGN KEY([book_id])
REFERENCES [dbo].[Dim_book] ([book_id])
GO

ALTER TABLE [dbo].[Dim_book_author] CHECK CONSTRAINT [fk_book_a]
GO


