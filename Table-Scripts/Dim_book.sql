USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Dim_book]    Script Date: 2/11/2026 3:05:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_book](
	booK_sk int identity(1,1),
	[book_id] [int] NOT NULL,
	[isbn13] [varchar](20) NULL,
	[num_pages] [int] NULL,
	[publication_date] [date] NULL,
	[title] [varchar](255) NULL,
	[publisher_name] [varchar](100) NULL,
	[language_code] [varchar](10) NULL,
	[language_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[book_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


