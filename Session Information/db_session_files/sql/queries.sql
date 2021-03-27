## Number of purchases made by Alice
SELECT COUNT(*) purchase_count FROM purchase WHERE pur_cus_id=1


## Total spent by each customer in our store
SELECT cus_first_name, cus_last_name, pur_cus_id, ROUND(SUM(pup_quantity*pro_price), 2) total_spent FROM purchase JOIN purchase_product ON pup_pur_id = pur_id
    JOIN product ON pup_pro_id=pro_id
    JOIN customer ON pur_cus_id=cus_id
	 GROUP BY pur_cus_id


## Total spent by Alice in our store
SELECT ROUND(SUM(pup_quantity*pro_price), 2) FROM purchase JOIN purchase_product ON pup_pur_id = pur_id
    JOIN product ON pup_pro_id=pro_id
	 WHERE pur_cus_id=1
	 GROUP BY pur_cus_id

