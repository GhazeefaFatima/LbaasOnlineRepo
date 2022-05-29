SET IDENTITY_INSERT dbo.category ON 
 IF NOT EXISTS (SELECT * FROM category WHERE category_id between 1 and 18)
   BEGIN
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (1, N'Non branded Kurtis', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (2, N'Branded Kurtis', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (3, N'2 piece branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (4, N'2 piece non branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (5, N'3 piece lawn non branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (6, N'3 piece lawn branded suits', 1, GETDATE(), 0) 
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (7, N'Winter branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (8, N'Winter non branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (9, N'Trousers', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (10, N'Dupattas', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (11, N'Shoes', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (12, N'Men’s collection', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (13, N'Boy’s collection', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (14, N'Girls branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (15, N'Girls non branded suits', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (16, N'Makeup', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (17, N'The body shop', 1, GETDATE(), 0)
INSERT dbo.category (category_id, category_name, created_by, created_date, is_deleted) VALUES (18, N'Semi formal suits OR party wear', 1, GETDATE(), 0)
end
SET IDENTITY_INSERT dbo.category OFF

SET IDENTITY_INSERT dbo.size on
 IF NOT EXISTS (SELECT * FROM size WHERE size_id between 1 and 3)
   BEGIN
INSERT dbo.size (size_id, size_name, created_by, created_date, is_deleted) VALUES (1, N's', 1, GETDATE(), 0)
INSERT dbo.size (size_id, size_name, created_by, created_date, is_deleted) VALUES (2, N'm', 1, GETDATE(), 0)
INSERT dbo.size (size_id, size_name, created_by, created_date, is_deleted) VALUES (3, N'l', 1, GETDATE(), 0)

end
SET IDENTITY_INSERT dbo.size OFF


SET IDENTITY_INSERT dbo.subcategory on
 IF NOT EXISTS (SELECT * FROM subcategory WHERE subcategory_id between 1 and 3)
   BEGIN
INSERT dbo.subcategory (subcategory_id, subcategory_name, created_by, created_date, is_deleted) VALUES (1, N'Maria. B', 1, GETDATE(), 0)
INSERT dbo.subcategory (subcategory_id, subcategory_name, created_by, created_date, is_deleted) VALUES (2, N'Limelight', 1, GETDATE(), 0)
INSERT dbo.subcategory (subcategory_id, subcategory_name, created_by, created_date, is_deleted) VALUES (3, N'Firdous', 1, GETDATE(), 0)
end
SET IDENTITY_INSERT dbo.subcategory OFF


SET IDENTITY_INSERT dbo.color on
 IF NOT EXISTS (SELECT * FROM color WHERE color_id between 1 and 3)
   BEGIN
INSERT dbo.color (color_id, color_name, created_by, created_date, is_deleted) VALUES (1, N'brown', 1, GETDATE(), 0)
INSERT dbo.color (color_id, color_name, created_by, created_date, is_deleted) VALUES (2, N'red', 1, GETDATE(), 0)
INSERT dbo.color (color_id, color_name, created_by, created_date, is_deleted) VALUES (3, N'pinl', 1, GETDATE(), 0)
end
SET IDENTITY_INSERT dbo.color OFF

SET IDENTITY_INSERT dbo.collection on
 IF NOT EXISTS (SELECT * FROM collection WHERE collection_id between 1 and 6)
   BEGIN
INSERT dbo.collection (collection_id, collection_name, created_by, created_date, is_deleted) VALUES (1, N'TRENDING PRODUCT', 1, GETDATE(), 0)
INSERT dbo.collection (collection_id, collection_name, created_by, created_date, is_deleted) VALUES (2, N'NEW ARRIVAL', 1, GETDATE(), 0)
INSERT dbo.collection (collection_id, collection_name, created_by, created_date, is_deleted) VALUES (3, N'ON SALE', 1, GETDATE(), 0)
INSERT dbo.collection (collection_id, collection_name, created_by, created_date, is_deleted) VALUES (4, N'FEATURED PRODUCTS', 1, GETDATE(), 0)
INSERT dbo.collection (collection_id, collection_name, created_by, created_date, is_deleted) VALUES (5, N'BEST SELLERS', 1, GETDATE(), 0)
INSERT dbo.collection (collection_id, collection_name, created_by, created_date, is_deleted) VALUES (6, N'NEW PRODUCTS', 1, GETDATE(), 0)
end
SET IDENTITY_INSERT dbo.collection OFF