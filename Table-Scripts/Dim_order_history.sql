USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Dim_order_status]    Script Date: 2/11/2026 3:07:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_order_status](
	[history_id] [int] identity(1,1) NOT NULL,
	[date_id] [int] NULL,
	[time_id] [char](8) NULL,
	[order_id] [int] NULL,
	[status_value] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_order_status]  WITH CHECK ADD  CONSTRAINT [fk_sdate] FOREIGN KEY([date_id])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Dim_order_status] CHECK CONSTRAINT [fk_sdate]
GO

ALTER TABLE [dbo].[Dim_order_status]  WITH CHECK ADD  CONSTRAINT [fk_sorder] FOREIGN KEY([order_id])
REFERENCES [dbo].[Fact_cust_orders] ([order_id])
GO

ALTER TABLE [dbo].[Dim_order_status] CHECK CONSTRAINT [fk_sorder]
GO

ALTER TABLE [dbo].[Dim_order_status]  WITH CHECK ADD  CONSTRAINT [fk_stime] FOREIGN KEY([time_id])
REFERENCES [dbo].[DimTime] ([Time])
GO

ALTER TABLE [dbo].[Dim_order_status] CHECK CONSTRAINT [fk_stime]
GO


