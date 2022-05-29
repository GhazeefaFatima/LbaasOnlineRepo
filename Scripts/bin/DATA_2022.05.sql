USE LibaasOnline
GO

SET IDENTITY_INSERT dbo.Product ON 

  IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 1)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (1, 2, N'Branded Kurtis - Firdous', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\1\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\1\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\1\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\1\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go

    IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 2)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (2, 2, N'Branded Kurtis - Limelight ', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\2\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\2\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\2\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\2\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go

    IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 3)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (3, 2, N'Branded Kurtis - Limelight ', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\3\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\3\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\3\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\3\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go
      IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 4)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (4, 2, N'Branded Kurtis - Maria. B ', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\4\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\4\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\4\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\4\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go

  IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 5)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (5, 1, N'Non Branded Kurtis', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\5\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\5\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\5\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\5\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go

  IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 6)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (6, 1, N'Non Branded Kurtis', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\6\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\6\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\6\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\6\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go
    IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 7)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (7, 1, N'Non Branded Kurtis', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\7\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\7\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\7\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\7\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go
    IF NOT EXISTS (SELECT * FROM Product WHERE ProductId = 8)
   BEGIN

         INSERT dbo.Product (ProductId, ProdCatId, ProdName, ProdShortDescription, is_main_page, is_new_product,is_best_selling, is_featured_product, is_on_sale, price, description,
         Picture1, Picture2, Picture3, Picture4, Picture5, UnitPrice, OldPrice, 
         Discount, UnitInStock, ProductAvailable, created_by, created_date, is_deleted, updated_date)
         VALUES (8, 1, N'Non Branded Kurtis', N'Tailor stitched by Libaas Online.
         Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
         ',1, 1, 1, 1, 1, 5000, '', 
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\8\img1.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\8\img2.jpeg',
         'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\8\img3.jpeg','E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\BrandedKurtis\8\img4.jpeg', 
         NULL, 5000, 4500, 2, 20, 1, 1, GETDATE(), 0 ,NULL)
   End
  Go

SET IDENTITY_INSERT dbo.Product OFF

SET IDENTITY_INSERT dbo.ProductAttributeLookup ON 
 IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 1)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (1, 1, N'Red', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (1, 2, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (1, 2, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (1, 2, N'L',1, GETDATE(), 0 ,NULL)
	End
   Go
    IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 2)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (2, 1, N'Brown', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (2, 2, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (2, 2, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (2, 2, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go
       IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 3)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (3, 1, N'Brown', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (3, 2, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (3, 2, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (3, 2, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go
       IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 4)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (4, 1, N'Red', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (4, 2, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (4, 2, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (4, 2, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go

    IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 5)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (5, 3, N'Yellow', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (5, 4, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (5, 4, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (5, 4, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go
       IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 6)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (6, 3, N'Green', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (6, 4, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (6, 4, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (6, 4, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go
    IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 7)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (7, 3, N'Grey', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (7, 4, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (7, 4, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (7, 4, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go
    IF NOT EXISTS (SELECT * FROM ProductAttribute WHERE ProductId = 8)
   BEGIN
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (8, 3, N'Yellow', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (8, 4, N'S', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (8, 4, N'M', 1, GETDATE(), 0 ,NULL)
        INSERT dbo.ProductAttribute (ProductId, AttributeId, AttributeValue, created_by, created_date, is_deleted, updated_date) VALUES (8, 4, N'L', 1, GETDATE(), 0 ,NULL)
	End
   Go


SET IDENTITY_INSERT dbo.ProductAttributeLookup OFF 
   


SET IDENTITY_INSERT dbo.ProductAttributeLookup ON
 IF NOT EXISTS (SELECT * FROM ProductAttributeLookup WHERE AttributeId between 1 and 4)
   BEGIN
INSERT dbo.ProductAttributeLookup (AttributeId, ProdCatId, AttributeName , created_by, created_date, is_deleted, updated_date) VALUES (1, 2, N'Color', 1, GETDATE(), 0)
INSERT dbo.ProductAttributeLookup (AttributeId, ProdCatId, AttributeName, created_by, created_date, is_deleted, updated_date) VALUES (2, 2, N'Size', 1, GETDATE(), 0)
INSERT dbo.ProductAttributeLookup (AttributeId, ProdCatId, AttributeName, created_by, created_date, is_deleted, updated_date) VALUES (3, 1, N'Color', 1, GETDATE(), 0)
INSERT dbo.ProductAttributeLookup (AttributeId, ProdCatId, AttributeName , created_by, created_date, is_deleted, updated_date) VALUES (4, 1, N'Size', 1, GETDATE(), 0)
  end
SET IDENTITY_INSERT dbo.ProductAttributeLookup OFF

SET IDENTITY_INSERT dbo.ProductCategory ON 
 IF NOT EXISTS (SELECT * FROM ProductCategory WHERE ProdCatId between 1 and 18)
   BEGIN
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (1, N'Non branded Kurtis', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (2, N'Branded Kurtis', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (3, N'2 piece branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (4, N'2 piece non branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (5, N'3 piece lawn non branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (6, N'3 piece lawn branded suits', 1, GETDATE(), 0) 
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (7, N'Winter branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (8, N'Winter non branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (9, N'Trousers', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (10, N'Dupattas', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (11, N'Shoes', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (12, N'Men’s collection', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (13, N'Boy’s collection', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (14, N'Girls branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (15, N'Girls non branded suits', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (16, N'Makeup', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (17, N'The body shop', 1, GETDATE(), 0)
INSERT dbo.ProductCategory (ProdCatId, CategoryName, created_by, created_date, is_deleted) VALUES (18, N'Semi formal suits OR party wear', 1, GETDATE(), 0)
end
SET IDENTITY_INSERT dbo.ProductCategory OFF

