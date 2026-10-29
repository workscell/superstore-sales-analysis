-- Q1. Berapa jumlah seluruh baris transaksi?
SELECT COUNT (*) AS total_transaksi
FROM "SUPERSTORE"

-- Q2. Berapa total Sales, Profit, dan Quantity?
SELECT SUM ("Sales") AS total_sales, SUM ("Profit") AS total_profit, SUM ("Quantity") AS total_quantity
FROM "SUPERSTORE"

-- Q3. Berapa total Sales dan Profit per Category?
SELECT "Category", SUM ("Sales") AS total_sales, SUM ("Profit") AS total_profit
FROM "SUPERSTORE"
GROUP by "Category"

-- Q4. Category mana yang memiliki total Profit tertinggi dan terendah?
SELECT "Category", SUM ("Profit") AS profit_tertinggi
FROM "SUPERSTORE"
GROUP BY "Category"
ORDER BY profit_tertinggi DESC

SELECT "Category", SUM ("Profit") AS profit_terendah
FROM "SUPERSTORE"
GROUP BY "Category"
ORDER BY profit_terendah ASC

-- Q5. Bagaimana perbandingan Sales dan Profit setiap Region?
SELECT "Region", "Sales", "Profit"
FROM "SUPERSTORE"

-- Q6. Segment mana yang memiliki rata-rata Sales tertinggi?
SELECT "Segment", AVG ("Sales") AS average_sales
FROM "SUPERSTORE"
GROUP BY "Segment"
ORDER BY AVG ("Sales") DESC

-- Q7. Apa 10 produk dengan total Sales tertinggi?
SELECT "Product ID", "Product Name", SUM ("Sales") AS total_sales
FROM "SUPERSTORE"
GROUP BY "Product ID", "Product Name"
ORDER BY SUM ("Sales") DESC
LIMIT 10

-- Q8. Apa 10 produk dengan total Profit terendah?
SELECT "Product ID", "Product Name", SUM ("Profit") AS total_profit
FROM "SUPERSTORE"
GROUP BY "Product ID", "Product Name"
ORDER BY SUM ("Profit") ASC

-- Q9. Berapa banyak transaksi yang menghasilkan Profit negatif?
WITH profit_negatif AS (
SELECT "Profit"
FROM "SUPERSTORE"
WHERE "Profit" < 0 )

SELECT COUNT ("Profit") AS total_profit_negatif
FROM profit_negatif

-- Q10. Berikan label Profitable, Loss, atau Break-even pada setiap transaksi
SELECT *, CASE
WHEN "Profit" > 0 THEN 'Profitable'
WHEN "Profit" < 0 THEN 'Loss'
ELSE 'Break-even'
END AS status_transaksi
FROM "SUPERSTORE"

-- Q11. Kelompokkan transaksi menjadi kategori Sales Low, Medium, dan High, lalu hitung jumlahnya.
SELECT "Product ID", "Product Name", "Sales", CASE
WHEN "Sales" > 1000 THEN 'High'
WHEN "Sales" < 100 THEN 'Low'
ELSE 'Medium'
END AS status_sales
FROM "SUPERSTORE"

-- Q12. Sub-Category mana yang memiliki total Sales lebih dari 50.000?
SELECT "Sub-Category", SUM ("Sales") AS total_sales
FROM "SUPERSTORE"
GROUP BY "Sub-Category"
HAVING SUM ("Sales") > 50000

-- Q13. Temukan produk dengan total Profit di atas rata-rata total Profit per produk
SELECT "Product ID", "Product Name", SUM ("Profit") AS total_profit
FROM "SUPERSTORE"
GROUP BY "Product ID", "Product Name"
HAVING SUM ("Profit") > (
SELECT AVG (average_profit)
FROM (SELECT SUM ("Profit") AS average_profit
FROM "SUPERSTORE"
GROUP BY "Product ID", "Product Name"))

-- Q14. Temukan 10 pelanggan dengan total Sales tertinggi.
SELECT "Customer ID", "Customer Name", SUM ("Sales") AS total_sales
FROM "SUPERSTORE"
GROUP BY "Customer ID", "Customer Name"
ORDER BY SUM ("Sales") DESC
limit 10

-- Q15. Gabungkan SUPERSTORE dan Customers_Practice untuk menampilkan informasi transaksi dan pelanggan.
SELECT *
FROM "SUPERSTORE" AS s
INNER JOIN "Customers_Practice" AS c
ON s."Customer ID" = c."Customer ID"

-- Q16. Gabungkan Customers_Practice tanpa mengubah data SUPERSTORE untuk menampilkan informasi transaksi dan pelanggan.
SELECT * 
FROM "SUPERSTORE" as s
LEFT JOIN "Customers_Practice" AS c
ON s."Customer ID" = c."Customer ID"

-- Q17. Cari transaksi tanpa pasangan Customer ID, jika ada.
SELECT *
FROM "SUPERSTORE" AS s
INNER JOIN "Customers_Practice" AS c
ON s."Customer ID" = c."Customer ID"
WHERE s."Customer ID" IS NULL

-- Q18. Bandingkan total Sales transaksi tanpa diskon dan transaksi dengan diskon. 
SELECT SUM ("Sales") AS total_sales, CASE 
WHEN ("Discount") > 0 THEN 'dengan_diskon'
WHEN ("Discount") <= 0 THEN 'tanpa_diskon'
END AS status_diskon
FROM "SUPERSTORE"
GROUP BY CASE 
WHEN ("Discount") > 0 THEN 'dengan_diskon'
WHEN ("Discount") <= 0 THEN 'tanpa_diskon' END



