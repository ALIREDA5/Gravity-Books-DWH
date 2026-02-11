USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Dim_customer_address]    Script Date: 2/11/2026 3:05:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_customer_address](
	cust_add_SK int identity(1,1) primary key,
	[address_id] [int] NULL,
	[customer_id] [int] NULL,
	[address_status] [varchar](50) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_customer_address]  WITH CHECK ADD  CONSTRAINT [fk_address_cus] FOREIGN KEY([address_id])
REFERENCES [dbo].[Dim_address] ([address_sk])
GO

ALTER TABLE [dbo].[Dim_customer_address] CHECK CONSTRAINT [fk_address_cus]
GO

ALTER TABLE [dbo].[Dim_customer_address]  WITH CHECK ADD  CONSTRAINT [fk_customer_ad] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Dim_customer] ([customer_sk])
GO

ALTER TABLE [dbo].[Dim_customer_address] CHECK CONSTRAINT [fk_customer_ad]
GO


