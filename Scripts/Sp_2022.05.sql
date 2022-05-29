USE [ShoppersDelightDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllProducts]    Script Date: 29-May-2022 3:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE  [dbo].[usp_GetAllProducts] 

AS
BEGIN

SELECT dbo.products.product_id, dbo.products.product_name, dbo.products.description, dbo.products.type, dbo.subcategory.subcategory_name, dbo.collection.collection_name, dbo.category.category_name, dbo.products.price, dbo.products.sale, dbo.products.discount, 
             dbo.products.stock, dbo.products.new, dbo.products.tags, dbo.variants.variant_id, dbo.size.size_name, dbo.color.color_name, dbo.variants.image_id, dbo.images.alt, dbo.images.image_src
FROM   dbo.category INNER JOIN
             dbo.products ON dbo.category.category_id = dbo.products.category_id INNER JOIN
             dbo.variants ON dbo.products.product_id = dbo.variants.product_id INNER JOIN
             dbo.subcategory ON dbo.products.sub_category_id = dbo.subcategory.subcategory_id INNER JOIN
             dbo.collection ON dbo.products.collection_id = dbo.collection.collection_id INNER JOIN
             dbo.size ON dbo.variants.size_id = dbo.size.size_id INNER JOIN
             dbo.color ON dbo.variants.color_id = dbo.color.color_id INNER JOIN
             dbo.images ON dbo.products.product_id = dbo.images.product_id
WHERE (dbo.products.is_deleted = 0) AND (dbo.category.is_deleted = 0) AND (dbo.collection.is_deleted = 0) AND (dbo.subcategory.is_deleted = 0) AND (dbo.size.is_deleted = 0) AND (dbo.color.is_deleted = 0) AND (dbo.variants.is_deleted = 0) AND (dbo.images.is_deleted = 0)

END
