-- This script creates a trigger that decreases the quantity of an item after adding a new order

DELIMITER //

CREATE TRIGGER decrease_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number  -- Decrease quantity by the number of items ordered
    WHERE name = NEW.item_name;            -- Match the item name from the orders table
END;

//

DELIMITER ;
