1. How you can select all rows from table?
    
        SELECT * FROM my_table;
3. How you can select uniq value from table?
        
        SELECT DISTINCT FROM my_table;
4. How you can set limit for table?
        
        SELECT * FROM my_table limit 5;
5. How you can get some row started not from first?
        
        SELECT * FROM my_table offset 5;
6. How you can sorted rows?
        
        SELECT * FROM my_table ORDER BY column_name;
7. Sorted in reverse order?
        
        SELECT * FROM my_table ORDER BY column_name DESC;
8. How you can return certain row with condition?
        
        SELECT * FROM my_table where price > 20;
9. How yoc can select rows with some condition which includes part of string?
        
        # ....%.... or ..._... for one symbol
        SELECT * FROM my_table where name like 'vla%';
        
10. How you can concatanate two column into one?

        -- or + for another db
        SELECT name || ' ' || price FROM my_table
11. How you can calculate new field?
        
        SELECT price, amount, price * amount as common_price from my_table;
12. How you can return AVG, OR SUM from columns?
        
        # AVG, SUM, MIN, MAX, COUNT
        SELECT AVG(price) from my_table;
13. Haw you can use group data?

        SELECT price, AVG(price) from my_table GROUP_BY price;
14. How you can set some condition for group_by operation?
        
        SELECT price, AVG(price) from my_table GROUP_BY price HAVING AVG(price) > 3;
15. How you can write sub request?
        
         select cust_name, (select count(*) as count_order from orders where Orders.cust_id = Customers.cust_id) from customers;
6. How you can wrte comment in sql?
        
        -- my-comment
2. How you can drop table?
        
        DROP TABLE table_name;
        
