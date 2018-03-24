-- APP_USER table
INSERT INTO app_user(id, name, age, salary) VALUES (1, 'vasja', '100', '24.77');
INSERT INTO app_user(id, name, age, salary) VALUES (2, 'kolja', '200', '774.77');
INSERT INTO app_user(id, name, age, salary) VALUES (3, 'sasha', '300', '3324.77');
INSERT INTO app_user(id, name, age, salary) VALUES (4, 'petja', '400', '8524.77');

-- menu table
INSERT INTO menu (id,category,image1,image2,href)
VALUES(1,'Sauce',
       FILE_READ('src/main/resources/static/images/menu/sauce_menu_1.png'),
       FILE_READ('src/main/resources/static/images/menu/sauce_menu_2.png'),
       '#a249cdab-844a-4a09-a5c4-a5a700bbb810');
INSERT INTO menu (id,category,image1,image2,href)
VALUES(2,'Meat ingredients',
       FILE_READ('src/main/resources/static/images/menu/meat_ingredients_menu_1.png'),
       FILE_READ('src/main/resources/static/images/menu/meat_ingredients_menu_2.png'),
       '#deb8b250-7249-4744-8016-a5c900bf5981');
INSERT INTO menu (id,category,image1,image2,href)
VALUES(3,'Mushrooms',
       FILE_READ('src/main/resources/static/images/menu/mushrooms_menu_1.png'),
       FILE_READ('src/main/resources/static/images/menu/mushrooms_menu_2.png'),
       '#f37516e1-ddc2-4659-afb8-a5a700bbc497');
INSERT INTO menu (id,category,image1,image2,href)
VALUES(4,'Fruits and vegetables',
       FILE_READ('src/main/resources/static/images/menu/fruits_and_vegetables_menu_1.png'),
       FILE_READ('src/main/resources/static/images/menu/fruits_and_vegetables_menu_2.png'),
       '#42022b1e-2dda-4e6d-b144-a5a700bbcb46');
INSERT INTO menu (id,category,image1,image2,href)
VALUES(5,'Seafood',
       FILE_READ('src/main/resources/static/images/menu/seafood_menu_1.png'),
       FILE_READ('src/main/resources/static/images/menu/seafood_menu_2.png'),
       '#deff7a7a-cdb3-499a-b92e-a5e500869b5c');
INSERT INTO menu (id,category,image1,image2,href)
VALUES(6,'Cheese',
       FILE_READ('src/main/resources/static/images/menu/cheese_menu_1.png'),
       FILE_READ('src/main/resources/static/images/menu/cheese_menu_2.png'),
       '#21ae9ac6-3ba6-4271-9811-a5e500865c02');

-- sauces table
INSERT INTO sauces (id,name,cost,image) VALUES(1,'Cocktail','1.5',FILE_READ('src/main/resources/static/images/sauce/cocktail.png'));
INSERT INTO sauces (id,name,cost,image) VALUES(2,'Creamy','1.25',FILE_READ('src/main/resources/static/images/sauce/creamy.png'));
INSERT INTO sauces (id,name,cost,image) VALUES(3,'French','1.15',FILE_READ('src/main/resources/static/images/sauce/french.png'));
INSERT INTO sauces (id,name,cost,image) VALUES(4,'Mustard','1.45',FILE_READ('src/main/resources/static/images/sauce/mustard.png'));
INSERT INTO sauces (id,name,cost,image) VALUES(5,'Ricotta','1.8',FILE_READ('src/main/resources/static/images/sauce/ricotta.png'));
INSERT INTO sauces (id,name,cost,image) VALUES(6,'Tomato','2.5',FILE_READ('src/main/resources/static/images/sauce/tomato.png'));

-- cheese table
INSERT INTO cheese (id,name,cost,image) VALUES(1,'Dana blue','1.5',FILE_READ('src/main/resources/static/images/cheese/dana_blue.png'));
INSERT INTO cheese (id,name,cost,image) VALUES(2,'Mozzarella','1.25',FILE_READ('src/main/resources/static/images/cheese/mozzarella.png'));
INSERT INTO cheese (id,name,cost,image) VALUES(3,'Mozzarella foundation','1.15',FILE_READ('src/main/resources/static/images/cheese/mozzarella_foundation.png'));
INSERT INTO cheese (id,name,cost,image) VALUES(4,'Parmaise','1.45',FILE_READ('src/main/resources/static/images/cheese/parmaise.png'));

-- fruits_and_vegetables table
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(1,'Bell pepper','1.5',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/bell_pepper.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(2,'Black olives','1.1',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/black_olives.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(3,'Broccoli','1.2',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/broccoli.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(4,'Capers','1.3',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/capers.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(5,'Caramelized onions','1.3',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/caramelized_onions.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(6,'Cherry tomatoes','1.1',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/cherry_tomatoes.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(7,'Jalapeno pepper','1.7',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/jalapeno_pepper.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(8,'Leek','1.1',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/leek.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(9,'Olives','1.2',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/olives.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(10,'Onion','1.9',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/onion.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(11,'Pickled cucumbers','1.2',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/pickled_cucumbers.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(12,'Pineapple','1.8',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/pineapple.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(13,'Red onion','1.9',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/red_onion.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(14,'Salad mix','1.2',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/salad_mix.png'));
INSERT INTO fruits_and_vegetables (id,name,cost,image) VALUES(15,'Tomatoes','1.8',FILE_READ('src/main/resources/static/images/fruits_and_vegetables/tomatoes.png'));

-- meat_ingredients table
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(1,'Bacon','1.51',FILE_READ('src/main/resources/static/images/meat_ingredients/bacon.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(2,'Beef cooked smoked','1.15',FILE_READ('src/main/resources/static/images/meat_ingredients/beef_cooked_smoked.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(3,'Chicken fillet','1.25',FILE_READ('src/main/resources/static/images/meat_ingredients/chicken_fillet.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(4,'Fillet of beef','1.35',FILE_READ('src/main/resources/static/images/meat_ingredients/fillet_of_beef.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(5,'Ham','1.45',FILE_READ('src/main/resources/static/images/meat_ingredients/ham.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(6,'Hunting sausages','1.55',FILE_READ('src/main/resources/static/images/meat_ingredients/hunting_sausages.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(7,'Italian sausages','1.65',FILE_READ('src/main/resources/static/images/meat_ingredients/italian_sausages.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(8,'Pepperoni','1.75',FILE_READ('src/main/resources/static/images/meat_ingredients/pepperoni.png'));
INSERT INTO meat_ingredients (id,name,cost,image) VALUES(9,'Pork boiled smoked','1.85',FILE_READ('src/main/resources/static/images/meat_ingredients/pork_boiled_smoked.png'));

-- mushrooms table
INSERT INTO mushrooms (id,name,cost,image) VALUES(1,'Mushroom mix','1.51',FILE_READ('src/main/resources/static/images/mushrooms/mushroom_mix.png'));

-- seafood table
INSERT INTO seafood (id,name,cost,image) VALUES(1,'Salmon slightly salted','1.51',FILE_READ('src/main/resources/static/images/seafood/salmon_slightly_salted.png'));
INSERT INTO seafood (id,name,cost,image) VALUES(2,'Shrimp','3.51',FILE_READ('src/main/resources/static/images/seafood/shrimp.png'));
INSERT INTO seafood (id,name,cost,image) VALUES(3,'Tuna','2.51',FILE_READ('src/main/resources/static/images/seafood/tuna.png'));

-- payment_type table
INSERT INTO payment_type (id,payment_type) VALUES(1,'Creditcard');
INSERT INTO payment_type (id,payment_type) VALUES(2,'Cash');
INSERT INTO payment_type (id,payment_type) VALUES(3,'Barter');
INSERT INTO payment_type (id,payment_type) VALUES(4,'Voucher');
INSERT INTO payment_type (id,payment_type) VALUES(5,'Bank transaction');
INSERT INTO payment_type (id,payment_type) VALUES(6,'Free');

-- order_details table
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (1,1,'1,3,6','1,2,3,4,9','1','1,7,15','1,3','1,4',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (2,2,'2,5,6','1,2,3','1','1,15','1,3','1,2',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (3,3,'3,4,6','1,2,4,9','','1,7,8,9,10','','1,4',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (4,4,'1,4,6','1,4,9','','1,7,13,15','','2,4',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (5,5,'1,4','9','1','7,13,15','1','3,4',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (6,6,'1,4','3,4,9','1','4,8,14','1','1,2',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (7,7,'1,3','1,5,8,9','1','3,6,11','3','3,4',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (8,8,'3,4,5,6','1,2,3,7,9','','4,7,12','3','2',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (9,9,'1,3','1,2,3,4,5','1','3,7,12','1,2','1,2,3',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (10,10,'1,6','1,2,3,4,6','1','2,3,5','1,2','2,3',35);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (11,11,'1,6','1,2,3,4,7','1','1,2,3,4','2,3','2',35);

INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (12,12,'1,2,3','1,2,8','','2,4,6,8','2,3','1,2',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (13,13,'2,4,5,6','1,2,5,9','','2,5,8,11','2,3','1,4',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (14,14,'1,2,5','4,6,9','','3,6,9,13','1','1',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (15,15,'1,3,6','4,8,9','','2,7,12','1','2',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (16,16,'3,4,5,6','4,5,9','','9,10,13','2','4',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (17,17,'1,3,5','4,8,9','1','6,11,12','2','1,2',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (18,18,'1,3,5','4,6,9','1','1,6,11','3','2,4',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (19,19,'1,2,6','4,6,7','1','2,6,14','3','1,4',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (20,20,'1,2,6','3,4,8','','1,2,4,8,9,11,12','1,2','2,4',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (21,21,'3,4,5,6','4,7,9','1','5,6,7,9,10','2,3','1,3',45);
INSERT INTO order_details (id,order_id,sauces,meat_ingredients,mushrooms,fruits_and_vegetables,seafood,cheese,picca_size)
VALUES (22,22,'1,3,6','1,2,7','1','1,2,7,10','1,3','3,4',45);

-- orders
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (1, 1, '2009-06-04 18:13:56.000000000', '2009-06-04 21:13:56.000000000', 'John Anderson', 'Central Strees 13', '8000233412', '280', 'I need cool picca ASAP!', 'The client was crazy!', 1, 'Adolf H.', 'Barbara Smith', 'awesomeclient21@gmail.com', false, 45, 5, 20, 0, 60, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (2, 2, '2017-02-13 18:00:58.000000000', '2017-01-10 15:35:18.000000000', 'Valerie Morales ', '10 Old Mill Rd, Tomatin, Inverness IV13 7YW, UK', '(288) 208-8088', '347', '-', '-', 6, 'Tracey Erickson ', 'Miranda Bennett ', 'TheSickGamer@gmail.com', true, 79, 10, 20, 0, 61, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (3, 3, '2017-01-11 01:24:55.000000000', '2017-02-03 19:35:11.000000000', 'Gwendolyn Cain ', '13 Bathurst Rd, Norwich NR2 2PP, UK', '(552) 691-6319', '342', '-', '-', 2, 'Mona Soto ', 'Melba Ortiz ', 'Exciting@gmail.com', false, 62, 12, 20, 0, 62, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (4, 4, '2017-03-04 07:53:06.000000000', '2017-02-16 09:10:44.000000000', 'Lola Leonard ', '2 Court Rd, Port Glasgow PA14 5PR, UK', '(516) 789-5429', '345', 'I’m hungry. Very very.', '-', 3, 'Crystal Lambert ', 'Janet Mccormick ', 'Ashamed@gmail.com', false, 78, 5, 20, 10, 63, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (5, 5, '2017-02-05 18:02:05.000000000', '2017-01-16 16:11:55.000000000', 'Brett Hart ', '8 Rose Ct, Wickersley, Rotherham S66 1BH, UK', '(368) 870-4044', '-', '-', '-', 4, 'Archie Nunez ', 'Miranda Bennett ', 'Dysfunctional@gmail.com', true, 26, 10, 20, 0, 64, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (6, 6, '2017-01-07 05:45:42.000000000', '2017-01-29 19:57:38.000000000', 'Priscilla Delgado ', '8 Park Ave, Newport Pagnell MK16 8JE, UK', '(363) 649-3522', '6546', '-', '-', 2, 'Maureen Pope ', 'Melba Ortiz ', 'Plastic@gmail.com', true, 12, 12, 20, 0, 65, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (7, 7, '2017-01-31 04:38:14.000000000', '2017-03-04 16:17:29.000000000', 'Clint Marshall ', 'Unnamed Road, Sanquhar DG4, UK', '(524) 910-4607', '-', '-', '-', 1, 'Tracey Erickson ', 'Janet Mccormick ', 'Plant@gmail.com', false, 23, 5, 20, 5, 66, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (8, 8, '2017-01-08 18:46:33.000000000', '2017-01-05 02:04:23.000000000', 'Kelvin Weaver ', '18 Weston Rd, Crewe CW1 6FX, UK', '(610) 307-2244', '3123', '-', 'Client  had no money. Bastard.', 1, 'Mona Soto ', 'Miranda Bennett ', 'Various@gmail.com', true, 56, 10, 20, 0, 67, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (9, 9, '2017-03-10 03:01:39.000000000', '2017-01-02 17:34:09.000000000', 'Martha Ellis ', 'St Paul''s, 8-12 Warwick Ln, London EC4P 4BN, UK', '(715) 186-9388', '-', '-', '-', 1, 'Crystal Lambert ', 'Melba Ortiz ', 'Sassy@gmail.com', false, 49, 12, 20, 0, 68, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (10, 10, '2017-01-28 06:54:10.000000000', '2017-03-05 13:19:16.000000000', 'Verna Norman ', '109 A38, Exeter EX6, UK', '(337) 188-1759', '12', '-', '-', 2, 'Archie Nunez ', 'Janet Mccormick ', 'Acceptable@gmail.com', true, 77, 5, 20, 0, 69, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (11, 11, '2017-03-11 03:12:56.000000000', '2017-02-26 02:59:11.000000000', 'Ryan Hamilton ', '11 Dunelm Grange, Boldon Colliery NE35 9AB, UK', '(463) 111-9161', '-', 'Courier offered me to visit gay pride. WTF?', '-', 2, 'Maureen Pope ', 'Miranda Bennett ', 'Cautious@gmail.com', false, 80, 10, 20, 10, 70, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (12, 12, '2017-02-15 12:57:34.000000000', '2017-01-04 03:52:47.000000000', 'Mae Guerrero ', '52 Morningside, Liverpool L23 0UW, UK', '(581) 492-6234', '-', '-', '-', 2, 'Tracey Erickson ', 'Melba Ortiz ', 'Wanting@gmail.com', false, 68, 12, 20, 0, 71, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (13, 13, '2017-02-07 07:29:55.000000000', '2017-02-09 01:10:22.000000000', 'Amanda Wise ', '10-11 Brook St, Porth CF39 9AU, UK', '(299) 875-8622', '-', '-', '-', 3, 'Mona Soto ', 'Janet Mccormick ', 'Industrious@gmail.com', true, 28, 5, 20, 0, 72, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (14, 14, '2017-02-09 06:20:49.000000000', '2017-01-01 03:13:56.000000000', 'Abel George ', '7 Durham Cl, Dukinfield SK16 5JR, UK', '(813) 364-4133', '-', '-', 'Client forced me to eat all picca that was in his fridge to free place for a new piccas.', 4, 'Crystal Lambert ', 'Miranda Bennett ', 'Tacky@gmail.com', true, 31, 10, 20, 10, 73, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (15, 15, '2017-02-04 22:10:04.000000000', '2017-01-06 14:38:50.000000000', 'Shannon Ramsey ', '25 Church Hill Green, Pudsey LS28 6LW, UK', '(257) 465-2374', '34', '-', '-', 3, 'Archie Nunez ', 'Melba Ortiz ', 'Diligent@gmail.com', false, 24, 12, 20, 0, 74, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (16, 16, '2017-01-20 08:23:48.000000000', '2017-03-09 03:24:38.000000000', 'Kathy Mcdonald ', '56 Laura St, Middlesbrough TS1 3LH, UK', '(335) 731-4664', '34', '-', 'Client tried to kill me.', 4, 'Maureen Pope ', 'Janet Mccormick ', 'Spiffy@gmail.com', false, 54, 5, 20, 0, 75, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (17, 17, '2017-02-05 11:38:34.000000000', '2017-01-23 07:51:24.000000000', 'Dwayne Cox ', '1 Kersbrook Ln, Budleigh Salterton EX9, UK', '(187) 648-2156', '-', 'Courier stole my watch.', '-', 1, 'Tracey Erickson ', 'Miranda Bennett ', 'Lackadaisical@gmail.com', true, 19, 10, 20, 0, 76, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (18, 18, '2017-01-15 23:29:21.000000000', '2017-02-17 19:23:34.000000000', 'Grace Fowler ', '2 The Red Cottages, Witcombe, Gloucester GL3 4SR, UK', '(448) 295-1908', '534', '-', '-', 1, 'Mona Soto ', 'Melba Ortiz ', 'Snotty@gmail.com', true, 58, 12, 20, 0, 77, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (19, 19, '2017-01-05 16:46:01.000000000', '2017-02-25 06:29:03.000000000', 'Patsy Mcbride ', 'A41, London NW2, UK', '(248) 851-3976', '-', '-', '-', 5, 'Crystal Lambert ', 'Janet Mccormick ', 'Melodic@gmail.com', false, 77, 5, 20, 0, 78, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (20, 20, '2017-01-15 05:14:47.000000000', '2017-01-09 22:51:18.000000000', 'Terrance Carroll ', '4 Dutton Leys, Northleach, Cheltenham GL54, UK', '(133) 656-2597', '56', 'So cool service, so sweet courier and so awful picca.', null, 2, 'Archie Nunez ', 'Miranda Bennett ', 'Tiny@gmail.com', false, 19, 10, 20, 5, 79, true);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (21, 21, '2017-02-04 08:53:03.000000000', '2017-01-26 16:22:14.000000000', 'Kelli Johnston ', 'Cheney Row, Sheffield S1 2HN, UK', '(388) 664-5879', '-', '-', '-', 2, 'Maureen Pope ', 'Melba Ortiz ', 'Messy@gmail.com', true, 66, 12, 20, 0, 80, false);
INSERT INTO PUBLIC.ORDERS (ID, ORDER_DETAILS_ID, REQUEST_DATETIME, DELIVERY_DATETIME, CLIENT, ADDRESS, PHONENUMBER, DOORCODE, CLIENT_COMMENTS, COURIER_COMMENTS, PAYMENT_TYPE, COURIER, CALL_OPERATOR, EMAIL, IS_COMPANY, TOTAL_COST, DELIVERY_COST, TAX_PERCENT, DISCOUNT_PERCENT, TOTAL_COST_WITH_TAX, ORDER_FINALIZED) VALUES (22, 22, '2017-03-11 08:41:00.000000000', '2017-02-04 22:42:00.000000000', 'Elbert Mendez ', '28 Gomer Rd, Bagshot GU19 5DQ, UK', '(728) 264-4134', '234', '-', '-', 5, 'Tracey Erickson ', 'Janet Mccormick ', 'Different@gmail.com', false, 23, 5, 20, 0, 81, false);