USE Gravity_Books2
GO

/****** Object:  Table [dbo].[Dim_shipping_method]    Script Date: 2/11/2026 3:07:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_shipping_method](
	method_sk int identity(1,1),
	[method_id] [int] NOT NULL unique,
	[method_name] [varchar](100) NULL,
	[cost] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[method_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


