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


SET IDENTITY_INSERT dbo.products ON
 IF NOT EXISTS (SELECT * FROM products WHERE product_id =1)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(1,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',1,1
    		 ,2,5000,4500,12,50,1)
   end

    IF NOT EXISTS (SELECT * FROM products WHERE product_id =2)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(2,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',2,2
    		 ,2,5000,4500,12,50,0)
   end
    IF NOT EXISTS (SELECT * FROM products WHERE product_id =3)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(3,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',2,3
    		 ,2,5000,4500,12,50,0)
   end
    IF NOT EXISTS (SELECT * FROM products WHERE product_id =4)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(4,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',3,2
    		 ,2,5000,4500,12,50,0)
   end

    IF NOT EXISTS (SELECT * FROM products WHERE product_id =5)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(5,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',2,4
    		 ,2,5000,4500,12,50,0)
   end
       IF NOT EXISTS (SELECT * FROM products WHERE product_id =6)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(6,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',3,5
    		 ,2,5000,4500,12,50,0)
   end
    IF NOT EXISTS (SELECT * FROM products WHERE product_id =7)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(7,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',2,6
    		 ,2,5000,4500,12,50,0)
   end

 IF NOT EXISTS (SELECT * FROM products WHERE product_id =8)
   BEGIN
    INSERT dbo.products(product_id, product_name, description, type, sub_category_id, collection_id, category_id, price, sale, discount, stock, new)
    values(8,'Branded Kurtis', N'Tailor stitched by Libaas Online.
             Length is 46 inches. Chest is 20 inches. Waist is 18 inches. Hip is 21.5 inches. Shoulder is 14 inches. Sleeves is 22 inches.
             ','fashion',1,1
    		 ,2,5000,4500,12,50,0)
   end
   SET IDENTITY_INSERT dbo.products OFF


 SET IDENTITY_INSERT dbo.images ON
 IF NOT EXISTS (SELECT * FROM images WHERE image_id between 1 and 4)
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(1,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\1\img1.jpeg',1,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(2,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\1\img2.jpeg',1,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(3,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\1\img3.jpeg',1,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(4,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\1\img4.jpeg',1,'1')
 end
  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 5 and 8)
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(5,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\2\img1.jpeg',2,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(6,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\2\img2.jpeg',2,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(7,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\2\img3.jpeg',2,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(8,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\2\img4.jpeg',2,'1')
 end
  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 9 and 12)
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(9,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\3\img1.jpeg',3,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(10,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\3\img2.jpeg',3,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(11,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\3\img3.jpeg',3,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(12,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\3\img4.jpeg',3,'1')
 end

  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 13 and 16 )
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(13,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\5\img1.jpeg',5,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(14,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\5\img2.jpeg',5,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(15,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\5\img3.jpeg',5,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(16,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\5\img4.jpeg',5,'1')
 end

  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 17 and 20)
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(17,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\4\img1.jpeg',4,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(18,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\4\img2.jpeg',4,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(19,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\4\img3.jpeg',4,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(20,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\4\img4.jpeg',4,'1')
 end
  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 21 and 24 )
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(21,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\6\img1.jpeg',6,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(22,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\6\img2.jpeg',6,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(23,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\6\img3.jpeg',6,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(24,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\6\img4.jpeg',6,'1')
 end
  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 25 and 28)
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(25,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\7\img1.jpeg',7,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(26,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\7\img2.jpeg',7,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(27,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\7\img3.jpeg',7,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(28,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\7\img4.jpeg',7,'1')
 end
  IF NOT EXISTS (SELECT * FROM images WHERE image_id between 29 and 32)
   BEGIN
   insert into images(image_id, image_src, product_id, alt)
   values(29,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\8\img1.jpeg',8,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(30,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\8\img2.jpeg',8,'1')
  insert into images(image_id, image_src, product_id, alt)
   values(31,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\8\img3.jpeg',8,'1')
   insert into images(image_id, image_src, product_id, alt)
   values(32,'E:\Projects\Client\Libaas Online\Project\Frontend\ShoppersDelight\src\assets\images\product\fashion\8\img4.jpeg',8,'1')
 end
  SET IDENTITY_INSERT dbo.images OFF


    SET IDENTITY_INSERT dbo.variants ON
	 IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 1 and 3) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(1,1,'sku1',1,1,1)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(2,1,'sku1',2,2,2)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(3,1,'sku1',3,3,3)
	 end
	  IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 4 and 6) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(4,2,'sku1',1,1,6)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(5,2,'sku1',2,2,7)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(6,2,'sku1',3,3,8)
	 end
	   IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 7 and 9) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(7,3,'sku1',1,1,9)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(8,3,'sku1',2,2,10)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(9,3,'sku1',3,3,11)
	 end
	    IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 10 and 12) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(10,4,'sku1',1,1,13)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(11,4,'sku1',2,2,14)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(12,4,'sku1',3,3,15)
	 end
	    IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 13 and 15) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(13,5,'sku1',1,1,17)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(14,5,'sku1',2,2,18)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(15,5,'sku1',3,3,19)
	 end 
	 IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 16 and 18) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(16,6,'sku1',1,1,21)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(17,6,'sku1',2,2,22)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(18,6,'sku1',3,3,23)
	 end
	 IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 19 and 21) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(19,7,'sku1',1,1,25)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(20,7,'sku1',2,2,26)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(21,7,'sku1',3,3,27)
	 end   IF NOT EXISTS (SELECT * FROM variants WHERE variant_id between 22 and 24) 
	 BEGIN
	 insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(22,8,'sku1',1,1,29)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(23,8,'sku1',2,2,30)
	  insert into variants(variant_id, product_id, sku, size_id, color_id, image_id)
	 values(24,8,'sku1',3,3,31)
	 end  
   SET IDENTITY_INSERT dbo.variants OFF
