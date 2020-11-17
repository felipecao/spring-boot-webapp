DROP TABLE IF EXISTS billionaire;
DROP TABLE IF EXISTS menu_item;

CREATE TABLE billionaire (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  career VARCHAR(250) DEFAULT NULL
);

INSERT INTO billionaire (first_name, last_name, career) VALUES ('Aliko', 'Dangote', 'Billionaire Industrialist');
INSERT INTO billionaire (first_name, last_name, career) VALUES ('Bill', 'Gates', 'Billionaire Tech Entrepreneur');
INSERT INTO billionaire (first_name, last_name, career) VALUES ('Folrunsho', 'Alakija', 'Billionaire Oil Magnate');

CREATE TABLE menu_item (
  id IDENTITY PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(500) NOT NULL,
  price DOUBLE NOT NULL,
  image_url VARCHAR(1024) NOT NULL
);

INSERT INTO menu_item (id, name, description, price, image_url) VALUES (1, 'Veggie salad', 'Salad created with the best fresh products of the season. Bread not included.', 7.9, 'https://honestgreens.com/wp-content/uploads/2020/06/web3.png');
INSERT INTO menu_item (id, name, description, price, image_url) VALUES (2, 'Summer Burrata', 'Burrata cheese, cherry balsamic gazpacho, seaweed pesto, marinated watermelon, peach, mixed lettuce, kale.', 7.9, 'https://honestgreens.com/wp-content/uploads/2020/06/Summer-Burrata.png');
INSERT INTO menu_item (id, name, description, price, image_url) VALUES (3, 'Heavenly Hummus', 'Three kinds of hummus: beet, classic and black sesame on a base of kale, lentils, mint, pumpkin, grilled cherry tomatoes, mushrooms, cucumber, lombard, red pepper, white beans, kalamata olives, pomegranate and za’atar', 7.9, 'https://honestgreens.com/wp-content/uploads/2020/06/Heavenly-Hummus.png');
INSERT INTO menu_item (id, name, description, price, image_url) VALUES (4, 'Steak, Charcoal Grilled with Chimichurri', 'Local pasture-raised beef, marinated with fresh herbs, Josper grilled, served medium-rare', 7.9, 'https://honestgreens.com/wp-content/uploads/2020/06/web1.png');