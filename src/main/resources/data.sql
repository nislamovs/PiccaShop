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


-- order_details table
-- INSERT INTO order_details (id,name,cost,image) VALUES(3,'Tuna','2.51',FILE_READ('src/main/resources/static/images/seafood/tuna.png'));


-- orders
