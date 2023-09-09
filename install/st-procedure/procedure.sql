DELIMITER $$
--
-- Procedures
--
CREATE  PROCEDURE `get_store_stock` (IN `s_id` INT, OUT `store_id` INT, OUT `stock_date` DATE, OUT `prod_id` BIGINT, OUT `in_qty` INT, OUT `out_qty` INT, OUT `rem` VARCHAR(20), OUT `CatID` INT, OUT `BrandID` INT, OUT `ModelID` INT)  BEGIN 

  DECLARE done INT DEFAULT FALSE;
   DECLARE sql_qr text;
  
   
  DECLARE cursorForStore CURSOR FOR SELECT store.store_id FROM store WHERE isactive=1;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  
  DROP TABLE IF EXISTS tmp_store_stock; 
 CREATE TABLE `tmp_store_stock` ( `StoreID` int(11) NOT NULL, `Stock_Date` datetime NOT NULL, `ProdID` bigint(20) NOT NULL, `InQty` int(11) NOT NULL, `OutQty` int(11) NOT NULL, `category_id` varchar(11) NOT NULL, `brand_id` varchar(11)  NOT NULL, `model_id` varchar(11) NOT NULL , `Remarks` varchar(50) COLLATE utf8_unicode_ci NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 
  
 OPEN cursorForStore;
   read_loop: LOOP
        FETCH cursorForStore INTO s_id;
        IF done THEN
          LEAVE read_loop;
        END IF;
         INSERT INTO tmp_store_stock 
           SELECT StoreID, stockDate, ProdID, SUM(RecQty) AS InQty, SUM(RetQty) AS OutQty, CatID, BrandID, ModelID, remarks FROM(
                SELECT purchase_receive_details.store_id AS StoreID, purchase_receive.receive_date AS stockDate, purchase_receive_details.product_id AS ProdID, purchase_receive_details.receive_qty AS RecQty, 0 AS RetQty, ( SELECT category FROM product WHERE product.product_id=purchase_receive_details.product_id) AS CatID, ( SELECT brand FROM product WHERE product.product_id=purchase_receive_details.product_id) AS BrandID, ( SELECT model FROM product WHERE product.product_id=purchase_receive_details.product_id) AS ModelID, 'purchase_receive' AS remarks FROM purchase_receive_details INNER JOIN purchase_receive ON (purchase_receive_details.receive_id =purchase_receive.receive_id) WHERE purchase_receive_details.store_id=s_id 
                UNION ALL
                SELECT stock_movement.for_store_id AS StoreID, stock_movement.receive_datetime AS stockDate, stock_movement_details.product_id AS ProdID,stock_movement_details.received_qty AS RecQty, 0 AS RetQty, ( SELECT category FROM product WHERE product.product_id=stock_movement_details.product_id) AS CatID, ( SELECT brand FROM product WHERE product.product_id=stock_movement_details.product_id) AS BrandID, ( SELECT model FROM product WHERE product.product_id=stock_movement_details.product_id) AS ModelID, 'Stock Receive' AS remarks FROM stock_movement INNER JOIN stock_movement_details ON (stock_movement_details.movement_id=stock_movement.movement_id) WHERE stock_movement.for_store_id=s_id AND stock_movement_details.received_qty<>0 GROUP BY ProdID 
                UNION ALL
                 SELECT sales_return.store_id AS StoreID,sales_return.return_date AS stockDate, sales_return_details.product_id AS ProdID,sales_return_details.qty AS RecQty, 0 AS RetQty, ( SELECT category FROM product WHERE product.product_id=sales_return_details.product_id) AS CatID, ( SELECT brand FROM product WHERE product.product_id=sales_return_details.product_id) AS BrandID, ( SELECT model FROM product WHERE product.product_id=sales_return_details.product_id) AS ModelID, 'Sales Return' AS remarks FROM sales_return INNER JOIN sales_return_details ON (sales_return_details.sreturn_id=sales_return.sreturn_id) WHERE sales_return.store_id=s_id
                UNION ALL
                 SELECT purchase_return_details.store_id AS StoreID, purchase_return.return_date AS stockDate, purchase_return_details.product_id AS ProdID, 0 AS RecQty, purchase_return_details.qty AS RetQty, ( SELECT category FROM product WHERE product.product_id=purchase_return_details.product_id) AS CatID, ( SELECT brand FROM product WHERE product.product_id=purchase_return_details.product_id) AS BrandID, ( SELECT model FROM product WHERE product.product_id=purchase_return_details.product_id) AS ModelID, 'Purchase Return' AS remarks FROM purchase_return_details INNER JOIN purchase_return ON (purchase_return_details.preturn_id=purchase_return.preturn_id)  WHERE purchase_return_details.store_id=s_id
                UNION ALL
                SELECT stock_movement.from_store_id AS StoreID, stock_movement.issue_datetime AS stockDate, stock_movement_details.product_id AS ProdID, 0 AS RecQty, stock_movement_details.issue_qty AS RetQty, ( SELECT category FROM product WHERE product.product_id=stock_movement_details.product_id) AS CatID, ( SELECT brand FROM product WHERE product.product_id=stock_movement_details.product_id) AS BrandID, ( SELECT model FROM product WHERE product.product_id=stock_movement_details.product_id) AS ModelID, 'Stock Issue' AS remarks FROM stock_movement INNER JOIN stock_movement_details ON (stock_movement_details.movement_id=stock_movement.movement_id) WHERE stock_movement.for_store_id=s_id AND stock_movement_details.received_qty<>0 AND  stock_movement_details.issue_qty<>0 GROUP BY ProdID 
             UNION ALL
    SELECT sales_parent.store_id AS StoreID, sales_parent.sales_date AS stockDate, sale_details.product_id AS ProdID, 0 AS RecQty, sale_details.qty AS RetQty, ( SELECT category FROM product WHERE product.product_id=sale_details.product_id) AS CatID, ( SELECT brand FROM product WHERE product.product_id=sale_details.product_id) AS BrandID, ( SELECT model FROM product WHERE product.product_id=sale_details.product_id) AS ModelID, 'Sold' AS remarks FROM sales_parent INNER JOIN sale_details ON (sale_details.sale_id=sales_parent.sale_id) WHERE sales_parent.store_id=s_id
            ) AS tbl GROUP BY StoreID, ProdID 
        ;       
    END LOOP;
    CLOSE cursorForStore;
   



END$$

DELIMITER ;

