USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Dim_customer]    Script Date: 2/11/2026 3:05:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_customer](
	customer_sk int identity(1,1),
	[customer_id] [int] NOT NULL,
	[first_name] [varchar](100) NULL,
	[last_name] [varchar](100) NULL,
	[email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


