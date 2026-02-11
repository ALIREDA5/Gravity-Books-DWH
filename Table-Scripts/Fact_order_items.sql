USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[Fact_order_items]    Script Date: 2/11/2026 3:07:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_order_items](
	[line_id] [int] NOT NULL ,
	[order_id] [int] NULL,
	[book_sk] [int] NULL,
	[price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[line_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_order_items]  WITH CHECK ADD  CONSTRAINT [fk_book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Dim_book] ([book_sk])
GO

ALTER TABLE [dbo].[Fact_order_items] CHECK CONSTRAINT [fk_book]
GO

ALTER TABLE [dbo].[Fact_order_items]  WITH CHECK ADD  CONSTRAINT [fk_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Fact_cust_orders] ([order_id])
GO

ALTER TABLE [dbo].[Fact_order_items] CHECK CONSTRAINT [fk_order]
GO


