USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Dim_address]    Script Date: 2/11/2026 3:05:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_address](
	address_sk int identity(1,1),
	[address_id] [int] NOT NULL,
	[street_number] [varchar](20) NULL,
	[street_name] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[country_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[address_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


