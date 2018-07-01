CREATE TABLE [dbo].[product](
	[prouct_id] [int] NOT NULL,
	[page] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[available] [int] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[prouct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

