CREATE PROCEDURE `horses`.`items_count`(OUT param1 INT)
BEGIN
    SELECT COUNT(*) INTO param1 FROM items;
   END;