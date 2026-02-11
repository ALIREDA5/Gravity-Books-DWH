USE gravity_books_SSIS
GO

/****** Object:  Table [dbo].[DimTime]    Script Date: 2/11/2026 3:07:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTime](
	[Time] [char](8) NOT NULL,
	[Hour] [char](2) NOT NULL,
	[MilitaryHour] [char](2) NOT NULL,
	[Minute] [char](2) NOT NULL,
	[Second] [char](2) NOT NULL,
	[AmPm] [char](2) NOT NULL,
	[StandardTime] [char](11) NULL,
 CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED 
(
	[Time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


