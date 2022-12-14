CREATE INDEX model ON models(model_name ASC);
CREATE INDEX status ON orders(order_completion ASC);
CREATE INDEX name on customers(customer_name);

SELECT BRAND_NAME,MODEL_NAME,MODEL_YEAR,EDITION,COLOUR,PRICE
FROM BRANDS INNER JOIN MODELS USING(BRAND_ID) INNER JOIN OPTIONS USING(MODEL_ID);

SELECT VIN,BRAND_NAME,MODEL_NAME,MODEL_YEAR,EDITION,COLOUR,PRICE,ORDER_DATE,ORDER_COMPLETION,ORDER_PRICE,DEALER_NAME,DEALER_PHONE,CUSTOMER_NAME,CUSTOMER_PHONE
FROM BRANDS INNER JOIN MODELS USING(BRAND_ID) 
INNER JOIN OPTIONS USING(MODEL_ID)
INNER JOIN VEHICLE USING(OPTION_ID,MODEL_ID,BRAND_ID)
INNER JOIN ORDERS USING(VIN)
INNER JOIN DEALERS USING(DEALER_ID)
INNER JOIN CUSTOMERS USING(CUSTOMER_ID);

SELECT VIN,BRAND_NAME,MODEL_NAME,MODEL_YEAR,EDITION,COLOUR,PRICE,ORDER_DATE,ORDER_COMPLETION,ORDER_PRICE,DEALER_NAME,DEALER_PHONE,CUSTOMER_NAME,CUSTOMER_PHONE
FROM BRANDS INNER JOIN MODELS USING(BRAND_ID) 
INNER JOIN OPTIONS USING(MODEL_ID)
INNER JOIN VEHICLE USING(OPTION_ID,MODEL_ID,BRAND_ID)
INNER JOIN ORDERS USING(VIN)
INNER JOIN DEALERS USING(DEALER_ID)
INNER JOIN CUSTOMERS USING(CUSTOMER_ID)
WHERE ORDER_COMPLETION='Pending';
