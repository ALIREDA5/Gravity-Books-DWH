USE Gravity_Books2
GO

/****** Object:  Table [dbo].[Fact_cust_orders]    Script Date: 2/11/2026 3:07:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_cust_orders](
	order_sk int identity(1,1),
	[order_id] [int] NOT NULL,
	[customer_id] [int] NULL,
	[orderReceived_date_id] [int] NULL,
	[orderDelivered_date_id] [int] NULL,
	[orderCancelled_date_id] [int] NULL,
	[orderReturned_date_id] [int] NULL,
	[status_value] [varchar](50) NULL default 'Order Received',
	--[ordertime_id] [char](8) NULL,
	[dest_address_id] [int] NULL,
	[shipping_method_id] [int] NULL,
	[book_id] [int] NULL,
	[price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	order_sk ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_address] FOREIGN KEY([dest_address_id])
REFERENCES [dbo].[Dim_address] ([address_sk])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_address]
GO

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Dim_customer] ([customer_sk])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_customer]
GO

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Dim_book] ([book_sk])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_book]

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_date] FOREIGN KEY([orderReceived_date_id])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_date]
GO

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_date1] FOREIGN KEY([orderDelivered_date_id])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_date1]
GO

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_date2] FOREIGN KEY([orderCancelled_date_id])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_date2]
GO

ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_date3] FOREIGN KEY([orderReturned_date_id])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_date3]
GO


ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_shipping_method] FOREIGN KEY([shipping_method_id])
REFERENCES [dbo].[Dim_shipping_method] ([method_sk])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_shipping_method]
GO
/*
ALTER TABLE [dbo].[Fact_cust_orders]  WITH CHECK ADD  CONSTRAINT [fk_time] FOREIGN KEY([time_id])
REFERENCES [dbo].[DimTime] ([Time])
GO

ALTER TABLE [dbo].[Fact_cust_orders] CHECK CONSTRAINT [fk_time]
GO

*/
