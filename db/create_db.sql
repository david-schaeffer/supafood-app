CREATE DATABASE restaurant_db;

DROP USER 'webapp';

CREATE USER 'webapp' @'%' IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES ON restaurant_db.* TO 'webapp' @'%';

FLUSH PRIVILEGES;

USE restaurant_db;

-- DDL
CREATE TABLE CustomerOrder (
    order_id int AUTO_INCREMENT NOT NULL,
    order_type varchar(24) NOT NULL,
    date_placed datetime DEFAULT CURRENT_TIMESTAMP,
    date_completed datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    queue_order smallint NOT NULL,
    order_status varchar(24) NOT NULL,
    PRIMARY KEY (order_id)
);

INSERT INTO
    CustomerOrder (
        order_type,
        date_placed,
        date_completed,
        queue_order,
        order_status
    )
VALUES
    (
        'takeout',
        '2021-12-05 07:16:10',
        '2021-12-06 06:43:11',
        1,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 04:49:55',
        '2021-12-06 19:08:26',
        2,
        'received'
    ),
    (
        'dine in',
        '2021-12-05 14:52:11',
        '2021-12-06 01:18:56',
        3,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 03:57:43',
        '2021-12-06 16:19:40',
        4,
        'completed'
    ),
    (
        'takeout',
        '2021-12-05 23:15:04',
        '2021-12-06 01:09:29',
        5,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 11:40:32',
        '2021-12-06 08:41:05',
        6,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 05:29:38',
        '2021-12-06 13:14:28',
        7,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 16:12:04',
        '2021-12-06 21:36:46',
        8,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 14:39:22',
        '2021-12-06 08:22:44',
        9,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 02:16:48',
        '2021-12-06 20:57:42',
        10,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 19:32:25',
        '2021-12-06 11:42:58',
        11,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 00:44:02',
        '2021-12-06 03:54:25',
        12,
        'received'
    ),
    (
        'dine in',
        '2021-12-05 14:59:17',
        '2021-12-06 00:46:41',
        13,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 15:05:56',
        '2021-12-06 11:02:57',
        14,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 04:24:59',
        '2021-12-06 12:45:38',
        15,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 19:27:20',
        '2021-12-06 02:32:32',
        16,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 10:10:31',
        '2021-12-06 07:29:51',
        17,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 00:39:45',
        '2021-12-06 03:27:27',
        18,
        'completed'
    ),
    (
        'takeout',
        '2021-12-05 19:12:43',
        '2021-12-06 20:32:22',
        19,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 17:25:10',
        '2021-12-06 19:22:41',
        20,
        'completed'
    ),
    (
        'takeout',
        '2021-12-05 03:18:16',
        '2021-12-06 19:34:22',
        21,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 19:23:38',
        '2021-12-06 19:00:38',
        22,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 05:07:16',
        '2021-12-06 05:21:50',
        23,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 11:38:47',
        '2021-12-06 14:41:43',
        24,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 05:48:41',
        '2021-12-06 13:20:56',
        25,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 23:11:59',
        '2021-12-06 10:47:44',
        26,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 02:25:06',
        '2021-12-06 04:06:07',
        27,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 13:11:47',
        '2021-12-06 20:54:34',
        28,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 13:50:34',
        '2021-12-06 00:43:15',
        29,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 03:45:33',
        '2021-12-06 14:40:06',
        30,
        'received'
    ),
    (
        'dine in',
        '2021-12-05 15:49:23',
        '2021-12-06 20:02:55',
        31,
        'received'
    ),
    (
        'dine in',
        '2021-12-05 07:18:58',
        '2021-12-06 01:21:07',
        32,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 07:03:32',
        '2021-12-06 08:23:06',
        33,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 17:43:40',
        '2021-12-06 06:21:27',
        34,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 20:42:50',
        '2021-12-06 10:30:38',
        35,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 09:22:05',
        '2021-12-06 13:34:54',
        36,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 22:22:54',
        '2021-12-06 18:13:58',
        37,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 04:50:06',
        '2021-12-06 05:16:30',
        38,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 01:25:25',
        '2021-12-06 06:53:43',
        39,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 08:27:13',
        '2021-12-06 16:32:21',
        40,
        'completed'
    ),
    (
        'takeout',
        '2021-12-05 22:49:38',
        '2021-12-06 13:20:09',
        41,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 15:28:23',
        '2021-12-06 06:06:49',
        42,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 00:36:09',
        '2021-12-06 05:08:05',
        43,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 05:39:39',
        '2021-12-06 08:35:56',
        44,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 06:37:00',
        '2021-12-06 06:03:13',
        45,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 04:15:11',
        '2021-12-06 03:18:53',
        46,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 08:33:40',
        '2021-12-06 03:52:33',
        47,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 00:43:39',
        '2021-12-06 15:00:37',
        48,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 00:54:18',
        '2021-12-06 06:51:02',
        49,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 12:53:47',
        '2021-12-06 05:27:48',
        50,
        'received'
    ),
    (
        'dine in',
        '2021-12-05 09:21:28',
        '2021-12-06 08:17:46',
        51,
        'completed'
    ),
    (
        'takeout',
        '2021-12-05 18:49:14',
        '2021-12-06 08:45:11',
        52,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 20:49:59',
        '2021-12-06 11:34:39',
        53,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 03:00:24',
        '2021-12-06 00:27:05',
        54,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 17:31:30',
        '2021-12-06 17:46:58',
        55,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 21:51:18',
        '2021-12-06 21:34:18',
        56,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 01:08:03',
        '2021-12-06 07:46:26',
        57,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 13:01:51',
        '2021-12-06 12:08:08',
        58,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 09:31:44',
        '2021-12-06 14:15:46',
        59,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 07:05:56',
        '2021-12-06 07:46:28',
        60,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 01:56:41',
        '2021-12-06 05:42:02',
        61,
        'completed'
    ),
    (
        'delivery',
        '2021-12-05 01:23:28',
        '2021-12-06 10:02:19',
        62,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 21:51:48',
        '2021-12-06 08:52:22',
        63,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 06:01:11',
        '2021-12-06 07:50:39',
        64,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 02:40:53',
        '2021-12-06 01:41:19',
        65,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 18:02:35',
        '2021-12-06 08:10:18',
        66,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 19:05:57',
        '2021-12-06 22:25:44',
        67,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 00:21:39',
        '2021-12-06 02:14:10',
        68,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 14:36:21',
        '2021-12-06 12:50:00',
        69,
        'received'
    ),
    (
        'dine in',
        '2021-12-05 06:20:28',
        '2021-12-06 02:08:31',
        70,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 23:42:02',
        '2021-12-06 09:50:59',
        71,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 13:59:52',
        '2021-12-06 05:39:35',
        72,
        'completed'
    ),
    (
        'takeout',
        '2021-12-05 00:15:03',
        '2021-12-06 02:44:30',
        73,
        'received'
    ),
    (
        'delivery',
        '2021-12-05 08:56:54',
        '2021-12-06 13:21:13',
        74,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 13:27:46',
        '2021-12-06 20:23:05',
        75,
        'completed'
    ),
    (
        'dine in',
        '2021-12-05 21:31:32',
        '2021-12-06 13:13:44',
        76,
        'in progress'
    ),
    (
        'takeout',
        '2021-12-05 07:44:05',
        '2021-12-06 06:33:21',
        77,
        'in progress'
    ),
    (
        'dine in',
        '2021-12-05 22:18:10',
        '2021-12-06 01:52:41',
        78,
        'in progress'
    ),
    (
        'delivery',
        '2021-12-05 02:37:35',
        '2021-12-06 17:37:40',
        79,
        'received'
    ),
    (
        'takeout',
        '2021-12-05 17:51:10',
        '2021-12-06 22:56:19',
        80,
        'completed'
    );

CREATE TABLE DietaryRestriction (
    dietary_restriction_id int AUTO_INCREMENT NOT NULL,
    name varchar(24) NOT NULL,
    PRIMARY KEY (dietary_restriction_id)
);

INSERT INTO
    DietaryRestriction (name)
VALUES
    ('vegan'),
    ('vegetarian'),
    ('pescetarian'),
    ('gluten free'),
    ('nut free'),
    ('peanut free'),
    ('dairy free'),
    ('lactose intolerant'),
    ('halal'),
    ('kosher');

CREATE TABLE MenuItem (
    menu_item_id int AUTO_INCREMENT NOT NULL,
    name varchar(60) NOT NULL,
    description varchar(100) NOT NULL,
    calories smallint NOT NULL,
    unit_price decimal(10, 2) NOT NULL,
    active boolean NOT NULL,
    PRIMARY KEY (menu_item_id)
);

INSERT INTO
    MenuItem (
        name,
        description,
        calories,
        unit_price,
        active
    )
VALUES
    (
        'Single Hamburger',
        'One delicious 100% beef patty',
        562,
        10.68,
        false
    ),
    (
        'Single Cheeseburger',
        'One delicious 100% beef patty with Vermont cheddar',
        848,
        9.65,
        TRUE
    ),
    (
        'Double Hamburger',
        'Two delicious 100% beef patties',
        792,
        9.44,
        TRUE
    ),
    (
        'Bacon Hamburger',
        'One delicious 100% beef patty with applewood smoked bacon',
        896,
        15.68,
        TRUE
    ),
    (
        'Double Cheeseburger',
        'Two delicious 100% beef patties with Vermont cheddar',
        269,
        19.57,
        TRUE
    ),
    (
        'Bacon Cheeseburger',
        'Two delicious 100% beef patties with Vermont cheddar and applewood smoked bacon',
        234,
        3.16,
        false
    ),
    (
        'Mushroom Swiss Cheeseburger',
        'Two delicious 100% beef patties with grilled mushrooms and swiss cheese',
        340,
        19.24,
        false
    ),
    (
        'Chicken Tenders',
        'All white meat chicken tenders fried to a satisfying crisp',
        542,
        6.73,
        false
    ),
    (
        'Crispy Chicken Sandwich',
        'Crispy chicken breast on a toasted bun',
        570,
        1.53,
        false
    ),
    (
        'Avocado Bacon Club Crispy Chicken Sandwich',
        'Crispy chicken breast with avocado and applewood smoked bacon on a toasted bun',
        863,
        2.45,
        false
    ),
    (
        'Colorado Turkey Burger',
        'Perfectly seasoned and grilled turkey with pepper jack cheese and chipotle aioli',
        530,
        4.0,
        false
    ),
    (
        'Avocado Bacon Club Turkey Burger',
        'Perfectly seasoned and grilled turkey with avocado and applewood smoked bacon',
        240,
        12.8,
        TRUE
    ),
    (
        'Classic Turkey Burger',
        'Perfectly seasoned and grilled turkey on a toasted bun',
        872,
        3.79,
        false
    ),
    (
        'Caesar Salad',
        'Fresh romaine drizzled with caesar dressing and topped with croutons and parmesan',
        529,
        6.17,
        false
    ),
    (
        'Cobb Salad',
        'Fresh mixed greens, bleu cheese, applewood smoked bacon, red onions, and ranch',
        480,
        7.07,
        false
    ),
    (
        'Strawberry Summer Salad',
        'Fresh mixed greens, sliced strawberries, pecans, red onions, and goat cheese',
        132,
        5.24,
        false
    ),
    (
        'Kids Hamburger',
        'One delicious (miniature) 100% beef patty',
        941,
        8.25,
        false
    ),
    (
        'Kids Cheeseburger',
        'One delicious (miniature) 100% beef patty with Vermont cheddar',
        491,
        18.16,
        TRUE
    ),
    (
        'Kids Chicken Tenders',
        'Two deliciously crispy chicken tenders',
        857,
        13.09,
        TRUE
    ),
    (
        'Coke Bottle',
        'Refreshing Coca Cola in its classic container',
        732,
        14.74,
        TRUE
    ),
    (
        'Sprite Bottle',
        'Refreshing lemon-lime Sprite in its classic container',
        925,
        10.6,
        false
    ),
    (
        'Coke Zero Bottle',
        'Full flavor, zero calories',
        440,
        17.62,
        false
    ),
    (
        'Chocolate Milkshake',
        'Rich dark chocolate ice cream finished with whipped cream and chocolate chips',
        514,
        10.5,
        TRUE
    ),
    (
        'Caramel Milkshake',
        'Creamy caramel ice cream finished with whipped cream and a caramel drizzle',
        899,
        11.96,
        TRUE
    ),
    (
        'Vanilla Milkshake',
        'Velvety vanilla ice cream finished with whipped cream and a cherry',
        670,
        2.35,
        false
    ),
    (
        'Strawberry Milkshake',
        'Sweet strawberry ice cream finished with whipped cream and a jelly drizzle',
        872,
        19.17,
        false
    ),
    (
        'French Fries',
        'Crispy, double fried french fries served with dipping sauce',
        644,
        9.32,
        TRUE
    ),
    (
        'Tater Tots',
        'Crispy, double fried tater tots served with dipping sauce',
        220,
        5.14,
        TRUE
    ),
    (
        'Onion Rings',
        'Crispy, double fried onion rings served with dipping sauce',
        623,
        9.61,
        TRUE
    ),
    (
        'Side Caesar',
        'A small portion of a classic caesar salad',
        602,
        1.98,
        false
    );

CREATE TABLE Category (
    category_id int AUTO_INCREMENT NOT NULL,
    name varchar(24) NOT NULL,
    description varchar(100) NOT NULL,
    PRIMARY KEY (category_id)
);

INSERT INTO
    Category (name, description)
VALUES
    (
        'Burgers',
        'Freshly made burgers with 100% Certified Angus Beef'
    ),
    (
        'Chicken',
        'Fresh, never frozen chicken fried to a satisfying crisp'
    ),
    (
        'Turkey burgers',
        'Perfectly seasoned turkey packed with flavor'
    ),
    (
        'Salads',
        'Carefully curated combinations of veggies, proteins, and accompaniments'
    ),
    (
        'Kids meals',
        'All your favorites in a kid-friendly portion; served with fries'
    ),
    (
        'Beverages',
        'Refresh with a thirst-quenching drink'
    ),
    (
        'Desserts',
        'Delectable dessert creations to sate your sweet tooth'
    ),
    (
        'Sides',
        'Fries, tots, salads, and more to accompany your meal'
    ),
    (
        'Sandwiches',
        'Fresh produce on fresh bread, designed by the chef'
    ),
    (
        'Milkshakes',
        'Thick and creamy ice cream, always hand dipped'
    );

CREATE TABLE Ingredient (
    ingredient_id int AUTO_INCREMENT NOT NULL,
    name varchar(60) NOT NULL,
    amount_in_stock int NOT NULL,
    PRIMARY KEY (ingredient_id)
);

INSERT INTO
    Ingredient (name, amount_in_stock)
VALUES
    ('Vinegar - Tarragon', 511),
    ('Sprite, Diet - 355ml', 96),
    ('Daves Island Stinger', 870),
    ('Towel Multifold', 136),
    ('Juice - Orange 1.89l', 969),
    ('Eggwhite Frozen', 346),
    ('Tart Shells - Barquettes, Savory', 801),
    ('Coffee Swiss Choc Almond', 811),
    ('Goat - Leg', 937),
    ('Cup - 3.5oz, Foam', 223),
    ('Cucumber - English', 974),
    ('Vinegar - White Wine', 951),
    ('Nut - Hazelnut, Ground, Natural', 318),
    ('Chinese Lemon Pork', 439),
    ('Fish - Scallops, Cold Smoked', 342),
    ('Shiratamako - Rice Flour', 2),
    ('Flour Dark Rye', 991),
    ('Goat - Leg', 517),
    ('Pork - Back Ribs', 27),
    ('Wine - Vovray Sec Domaine Huet', 605),
    ('Bread Foccacia Whole', 159),
    ('Octopus', 98),
    ('Beef - Diced', 573),
    ('Easy Off Oven Cleaner', 553),
    ('Pasta - Cannelloni, Sheets, Fresh', 789),
    ('Sour Cream', 89),
    ('Dried Peach', 978),
    ('Kellogs Raisan Bran Bars', 262),
    ('Muffin Mix - Lemon Cranberry', 62),
    ('Hersey Shakes', 585),
    ('Five Alive Citrus', 26),
    ('Bread - Crusty Italian Poly', 909),
    ('Raisin - Golden', 309),
    ('Mustard - Pommery', 277),
    ('Bread - Corn Muffaletta', 276),
    ('Cactus Pads', 431),
    ('Potatoes - Mini White 3 Oz', 227),
    ('Extract - Vanilla,artificial', 644),
    ('Sachet', 29),
    ('Rice Paper', 952),
    ('Tea - Vanilla Chai', 238),
    ('Crackers - Water', 427),
    ('Bols Melon Liqueur', 139),
    ('Trout - Smoked', 558),
    ('Scallops - In Shell', 839),
    ('Table Cloth 62x120 Colour', 937),
    ('Gelatine Leaves - Bulk', 456),
    ('Tea - Green', 502),
    ('Flour Pastry Super Fine', 730),
    ('Tofu - Firm', 515),
    ('Haggis', 531),
    ('Tray - 12in Rnd Blk', 330),
    ('French Pastry - Mini Chocolate', 768),
    ('Pork - Backs - Boneless', 829),
    ('Dr. Pepper - 355ml', 825),
    ('Carbonated Water - White Grape', 507),
    ('Cheese - Provolone', 220),
    ('Snapple - Iced Tea Peach', 681),
    ('Wine - Red, Harrow Estates, Cab', 995),
    ('Fudge - Chocolate Fudge', 777),
    ('Energy Drink Bawls', 138),
    ('Lettuce - Radicchio', 919),
    ('Swiss Chard', 462),
    ('Beer - Muskoka Cream Ale', 921),
    ('Veal - Insides Provini', 674),
    ('Chicken - Wings, Tip Off', 979),
    ('Sauce - Sesame Thai Dressing', 292),
    ('Pork - Liver', 629),
    ('Wine - Merlot Vina Carmen', 849),
    ('Ecolab Crystal Fusion', 493),
    ('Pepper - Jalapeno', 461),
    ('Muffin - Mix - Bran And Maple 15l', 459),
    ('Sherbet - Raspberry', 55),
    ('Milk - 1%', 617),
    ('Wine - White, Antinore Orvieto', 261),
    ('Cheese - Bakers Cream Cheese', 720),
    ('Towel Multifold', 803),
    ('Bandage - Flexible Neon', 307),
    ('Eggwhite Frozen', 817),
    ('Kellogs Raisan Bran Bars', 747);

CREATE TABLE Supplier (
    supplier_id int AUTO_INCREMENT NOT NULL,
    company_name varchar(60) NOT NULL,
    phone varchar(20),
    contact_name varchar(24) NOT NULL,
    address varchar(60),
    city varchar(60),
    state varchar(24),
    zip_code varchar(5),
    PRIMARY KEY (supplier_id)
);

INSERT INTO
    Supplier (
        company_name,
        phone,
        contact_name,
        address,
        city,
        state,
        zip_code
    )
VALUES
    (
        'Leffler LLC',
        '(313) 7553184',
        'Michal Prendiville',
        '7 Green Drive',
        'Detroit',
        'Michigan',
        '73350'
    ),
    (
        'Toy, Huels and Considine',
        '(410) 3812116',
        'Ansell Rudram',
        '5310 Elgar Lane',
        'Baltimore',
        'Maryland',
        '51065'
    ),
    (
        'Watsica-Lakin',
        '(786) 9961876',
        'Shepperd Havik',
        '77478 Moland Court',
        'Miami',
        'Florida',
        '89955'
    ),
    (
        'Nader-Ward',
        '(831) 8372918',
        'Andre Easen',
        '06 Tomscot Plaza',
        'Santa Cruz',
        'California',
        '47275'
    ),
    (
        'Kassulke and Sons',
        '(425) 5638887',
        'Mair Harness',
        '69 Stephen Way',
        'Seattle',
        'Washington',
        '26494'
    ),
    (
        'Parker-Schinner',
        '(347) 4736495',
        'Roda Maxted',
        '52146 Waxwing Terrace',
        'Brooklyn',
        'New York',
        '11784'
    ),
    (
        'Adams, Schamberger and Turcotte',
        '(337) 1106484',
        'Nelli Melmar',
        '14 Rusk Place',
        'Lafayette',
        'Louisiana',
        '49078'
    ),
    (
        'Nicolas Inc',
        '(216) 7628543',
        'Brendan Valente',
        '24386 Meadow Valley Alley',
        'Cleveland',
        'Ohio',
        '01679'
    ),
    (
        'Schaden, Corkery and Jones',
        '(941) 8546958',
        'Julia Shiers',
        '28584 Golf Course Parkway',
        'Bradenton',
        'Florida',
        '34537'
    ),
    (
        'Schulist-Koelpin',
        '(530) 2018782',
        'Shandeigh Askham',
        '598 Muir Drive',
        'Sacramento',
        'California',
        '91729'
    ),
    (
        'Schmeler, Kohler and Smith',
        '(505) 1760427',
        'Livvyy Paolozzi',
        '911 7th Drive',
        'Albuquerque',
        'New Mexico',
        '84686'
    ),
    (
        'Batz, Witting and Rath',
        '(216) 2498937',
        'Kelsey Kohring',
        '4587 Spenser Place',
        'Cleveland',
        'Ohio',
        '07125'
    ),
    (
        'Moen-Powlowski',
        '(630) 1298351',
        'Mordecai Ferrey',
        '6627 Maple Wood Junction',
        'Aurora',
        'Illinois',
        '17065'
    ),
    (
        'Balistreri-Quigley',
        '(808) 4775652',
        'Dulcinea Alves',
        '05380 Prairieview Plaza',
        'Honolulu',
        'Hawaii',
        '59920'
    ),
    (
        'Bednar, McKenzie and Reinger',
        '(225) 2413295',
        'Heall Iannello',
        '2497 Katie Center',
        'Baton Rouge',
        'Louisiana',
        '76773'
    ),
    (
        'Jerde, Bailey and Welch',
        '(305) 1466444',
        'Shayne Bauduin',
        '6004 East Hill',
        'Pompano Beach',
        'Florida',
        '11269'
    ),
    (
        'Mitchell, Terry and Lehner',
        '(402) 4395796',
        'Susann Pietruszka',
        '9114 Vernon Lane',
        'Omaha',
        'Nebraska',
        '17431'
    ),
    (
        'Mayert-Lubowitz',
        '(515) 2535224',
        'Danyelle Standish-Brooks',
        '96 Pierstorff Plaza',
        'Des Moines',
        'Iowa',
        '45089'
    ),
    (
        'Dare, Witting and Mertz',
        '(704) 1674195',
        'Helen-elizabeth Boykett',
        '822 Johnson Way',
        'Gastonia',
        'North Carolina',
        '27162'
    ),
    (
        'Harvey-Cruickshank',
        '(251) 7360299',
        'Aymer Allone',
        '5 Hanover Hill',
        'Mobile',
        'Alabama',
        '56311'
    ),
    (
        'Gottlieb Inc',
        '(330) 7133058',
        'Erick Shercliff',
        '994 Division Pass',
        'Youngstown',
        'Ohio',
        '89945'
    ),
    (
        'Klocko, Carter and Oberbrunner',
        '(504) 9939804',
        'Ondrea Abrahim',
        '88 Ryan Plaza',
        'New Orleans',
        'Louisiana',
        '74639'
    ),
    (
        'Bins-Stokes',
        '(202) 2059828',
        'Wendye McDugal',
        '94823 Sutteridge Lane',
        'Washington',
        'District of Columbia',
        '42770'
    ),
    (
        'Labadie-Veum',
        '(601) 9850335',
        'Jorgan Shotton',
        '2 Leroy Court',
        'Jackson',
        'Mississippi',
        '28744'
    ),
    (
        'Ziemann, Dare and Farrell',
        '(352) 2319186',
        'Paulette Lanfer',
        '09181 Veith Plaza',
        'Ocala',
        'Florida',
        '11116'
    ),
    (
        'Gottlieb, Sauer and Jaskolski',
        '(414) 2506880',
        'Darrell Rittmeier',
        '0767 Grasskamp Lane',
        'Milwaukee',
        'Wisconsin',
        '23688'
    ),
    (
        'Kuhlman, Brown and Cummings',
        '(704) 3015683',
        'Thomasin Janman',
        '14558 Kensington Street',
        'Charlotte',
        'North Carolina',
        '91110'
    ),
    (
        'Heaney LLC',
        '(626) 2992634',
        'Lorilee Chamberlayne',
        '71 Elgar Plaza',
        'Los Angeles',
        'California',
        '96158'
    ),
    (
        'Stiedemann-Jacobi',
        '(215) 8973766',
        'Celka Pycock',
        '96333 Prentice Point',
        'Philadelphia',
        'Pennsylvania',
        '90532'
    ),
    (
        'Kub Inc',
        '(210) 6422605',
        'Florry Duley',
        '54342 Spaight Drive',
        'San Antonio',
        'Texas',
        '56859'
    ),
    (
        'Von, D''Amore and McClure',
        '(843) 1335669',
        'Kermy Doy',
        '10 Rigney Circle',
        'Myrtle Beach',
        'South Carolina',
        '29676'
    ),
    (
        'Dickinson LLC',
        '(419) 1978773',
        'Eddie Meachan',
        '19 Stuart Junction',
        'Toledo',
        'Ohio',
        '89191'
    ),
    (
        'Hackett, Lang and Gottlieb',
        '(330) 5400909',
        'Melina Haggata',
        '093 Lawn Way',
        'Youngstown',
        'Ohio',
        '35955'
    ),
    (
        'Huel-Abernathy',
        '(336) 9047807',
        'Lucky Twentyman',
        '5786 Boyd Center',
        'Greensboro',
        'North Carolina',
        '08070'
    ),
    (
        'Fisher, Hickle and Walker',
        '(941) 4885134',
        'Catherine Ivushkin',
        '72261 Pierstorff Pass',
        'Bradenton',
        'Florida',
        '44183'
    ),
    (
        'O''Connell-Jacobs',
        '(304) 3853347',
        'Morrie Costar',
        '04286 Lerdahl Place',
        'Charleston',
        'West Virginia',
        '23615'
    ),
    (
        'Fritsch, Pfeffer and Schroeder',
        '(208) 7881043',
        'Jaquelin Montes',
        '223 Morrow Road',
        'Boise',
        'Idaho',
        '42277'
    ),
    (
        'Stracke, Schneider and Barrows',
        '(720) 9047858',
        'Dukey Nortunen',
        '51480 Green Plaza',
        'Littleton',
        'Colorado',
        '44251'
    ),
    (
        'Koelpin, Terry and McLaughlin',
        '(419) 8573017',
        'Alexandrina Poltun',
        '6738 Dovetail Place',
        'Toledo',
        'Ohio',
        '92991'
    ),
    (
        'Jaskolski, Conn and Tremblay',
        '(253) 1068499',
        'Andre Davis',
        '5 Longview Parkway',
        'Tacoma',
        'Washington',
        '15053'
    ),
    (
        'Hammes Group',
        '(254) 8315309',
        'Griswold Klaves',
        '4 Nancy Lane',
        'Killeen',
        'Texas',
        '79047'
    ),
    (
        'Gerlach, Fahey and Hayes',
        '(202) 7458581',
        'Tybie Bernadzki',
        '1394 Mitchell Lane',
        'Washington',
        'District of Columbia',
        '66311'
    ),
    (
        'Heidenreich-Kessler',
        '(240) 7580975',
        'Garry Lornsen',
        '336 Northland Alley',
        'Silver Spring',
        'Maryland',
        '52562'
    ),
    (
        'Klocko Inc',
        '(913) 4370265',
        'Rani Francino',
        '3096 Bobwhite Pass',
        'Shawnee Mission',
        'Kansas',
        '78791'
    ),
    (
        'Paucek, Hills and Rolfson',
        '(818) 3145554',
        'Dukey Hanssmann',
        '1393 Dahle Trail',
        'Burbank',
        'California',
        '16190'
    ),
    (
        'Murphy, Langosh and Grady',
        '(412) 4919484',
        'Katerina Seller',
        '48 Hazelcrest Terrace',
        'Pittsburgh',
        'Pennsylvania',
        '81883'
    ),
    (
        'Boyer, Zboncak and Gusikowski',
        '(817) 5319446',
        'Isaac Filipovic',
        '95 Comanche Parkway',
        'Fort Worth',
        'Texas',
        '89992'
    ),
    (
        'Lindgren, Haley and Gerhold',
        '(810) 7479154',
        'Bondie Whaymand',
        '613 Lighthouse Bay Street',
        'Warren',
        'Michigan',
        '24030'
    ),
    (
        'Cassin-Kohler',
        '(816) 6973957',
        'Levi Amner',
        '37011 Mariners Cove Place',
        'Independence',
        'Missouri',
        '99582'
    ),
    (
        'Hudson, Johns and Tromp',
        '(320) 6566222',
        'Borden Champley',
        '99028 Hintze Parkway',
        'Saint Cloud',
        'Minnesota',
        '43105'
    ),
    (
        'Bradtke, Krajcik and Collier',
        '(714) 7325533',
        'Schuyler Wessell',
        '9617 Eagle Crest Drive',
        'Irvine',
        'California',
        '67451'
    ),
    (
        'Gorczany-Bins',
        '(508) 9009952',
        'Siusan Raittie',
        '529 Atwood Circle',
        'Worcester',
        'Massachusetts',
        '88376'
    ),
    (
        'Hudson Group',
        '(865) 6898126',
        'Leia Abate',
        '718 Hovde Plaza',
        'Knoxville',
        'Tennessee',
        '81485'
    ),
    (
        'Jast, Jaskolski and Rowe',
        '(317) 1291404',
        'Reine Bartolini',
        '32427 Del Mar Hill',
        'Indianapolis',
        'Indiana',
        '18364'
    ),
    (
        'Baumbach-Wyman',
        '(859) 4113852',
        'Barri Tallman',
        '04928 Ramsey Way',
        'Lexington',
        'Kentucky',
        '30430'
    ),
    (
        'Torp, Schmeler and Cartwright',
        '(203) 3700074',
        'Lion Kemmons',
        '2 Browning Point',
        'Fairfield',
        'Connecticut',
        '56836'
    ),
    (
        'Dooley, Corkery and Monahan',
        '(617) 6242032',
        'Lonnard Ailward',
        '6237 Ilene Terrace',
        'Boston',
        'Massachusetts',
        '23675'
    ),
    (
        'Nicolas-Jerde',
        '(202) 3313321',
        'Nancy Switzer',
        '9569 Forster Park',
        'Washington',
        'District of Columbia',
        '02649'
    ),
    (
        'Orn Inc',
        '(561) 9974824',
        'Daveen Colombier',
        '5 Paget Center',
        'Lake Worth',
        'Florida',
        '92909'
    ),
    (
        'Marquardt and Sons',
        '(979) 8587817',
        'Celie Phil',
        '40 Lawn Place',
        'College Station',
        'Texas',
        '85493'
    ),
    (
        'O''Kon-Hyatt',
        '(765) 8637616',
        'Randall Dingley',
        '200 Mayfield Center',
        'Muncie',
        'Indiana',
        '51318'
    ),
    (
        'Durgan-Beatty',
        '(602) 5107682',
        'Armand Terbeek',
        '919 Manitowish Place',
        'Mesa',
        'Arizona',
        '92027'
    ),
    (
        'Torp-Harvey',
        '(954) 1181029',
        'Alexis Wilkison',
        '26078 Nova Hill',
        'Fort Lauderdale',
        'Florida',
        '11721'
    ),
    (
        'Lindgren-Stamm',
        '(405) 7923048',
        'Bernardina Isack',
        '791 Granby Park',
        'Norman',
        'Oklahoma',
        '34190'
    ),
    (
        'Spencer and Sons',
        '(559) 3344099',
        'Nobe Riddeough',
        '1877 Weeping Birch Road',
        'Fresno',
        'California',
        '93577'
    ),
    (
        'Kulas, Casper and Armstrong',
        '(702) 2313597',
        'Carmela Halt',
        '57 Vera Way',
        'Las Vegas',
        'Nevada',
        '95328'
    ),
    (
        'Huel, Leffler and Mitchell',
        '(402) 1378471',
        'Elston Cheverell',
        '9757 Truax Place',
        'Omaha',
        'Nebraska',
        '93115'
    ),
    (
        'Schultz Group',
        '(646) 5146194',
        'Korey Chrystie',
        '5 Fairview Court',
        'New York City',
        'New York',
        '46298'
    ),
    (
        'Lesch, Hilpert and Daugherty',
        '(864) 2827685',
        'Dyanna Mogridge',
        '9 Prairie Rose Parkway',
        'Spartanburg',
        'South Carolina',
        '83269'
    ),
    (
        'Jakubowski, Treutel and Rau',
        '(314) 9691110',
        'Pincas Farthing',
        '31 Mifflin Alley',
        'Saint Louis',
        'Missouri',
        '18690'
    ),
    (
        'Gutmann-Beier',
        '(563) 4790016',
        'Dorry Jevons',
        '1 Mesta Drive',
        'Davenport',
        'Iowa',
        '33684'
    ),
    (
        'Harber, Mann and Howell',
        '(217) 8631381',
        'Bertrand Danton',
        '017 Eastwood Street',
        'Springfield',
        'Illinois',
        '74772'
    ),
    (
        'Durgan and Sons',
        '(970) 8148917',
        'Lemar Rawes',
        '80 Green Lane',
        'Fort Collins',
        'Colorado',
        '30439'
    ),
    (
        'Rau-Yost',
        '(404) 4762596',
        'Livvyy Cradey',
        '131 Banding Drive',
        'Atlanta',
        'Georgia',
        '16635'
    ),
    (
        'Stoltenberg-Okuneva',
        '(540) 8341054',
        'Mano Bellew',
        '5 Welch Crossing',
        'Fredericksburg',
        'Virginia',
        '94192'
    ),
    (
        'Hoeger, Armstrong and Schiller',
        '(806) 8443207',
        'Stormy Pane',
        '2306 Thierer Circle',
        'Amarillo',
        'Texas',
        '28280'
    ),
    (
        'Stoltenberg-Blanda',
        '(916) 8485780',
        'Jeremias Wankel',
        '80567 Bayside Park',
        'Sacramento',
        'California',
        '28864'
    ),
    (
        'Reichert LLC',
        '(616) 1761248',
        'Hagen Lipgens',
        '2 Village Green Point',
        'Grand Rapids',
        'Michigan',
        '95195'
    ),
    (
        'Christiansen, O''Hara and Vandervort',
        '(763) 3803972',
        'Emalee Yashanov',
        '4282 Emmet Lane',
        'Minneapolis',
        'Minnesota',
        '98501'
    ),
    (
        'Conroy-Goodwin',
        '(505) 9462802',
        'Jude Baxstair',
        '98 Roxbury Place',
        'Albuquerque',
        'New Mexico',
        '70737'
    );

CREATE TABLE Customer (
    customer_id int AUTO_INCREMENT NOT NULL,
    order_id int NOT NULL,
    first_name text,
    last_name text,
    phone varchar(20),
    email varchar(100),
    cust_password text NOT NULL,
    PRIMARY KEY (customer_id),
    CONSTRAINT cust_order_placed FOREIGN KEY (order_id) REFERENCES CustomerOrder (order_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    Customer (
        order_id,
        first_name,
        last_name,
        phone,
        email,
        cust_password
    )
VALUES
    (
        '14',
        'Lazare',
        'McGillivrie',
        '(735) 2126303',
        'lmcgillivrie0@hostgator.com',
        'UHqGmDmInf'
    ),
    (
        '76',
        'Consalve',
        'Dunkley',
        '(415) 1400444',
        'cdunkley1@cnet.com',
        'pNT2oPV2'
    ),
    (
        '15',
        'Claybourne',
        'Plet',
        '(953) 5563049',
        'cplet2@google.com.br',
        'fKdq8DIj'
    ),
    (
        '73',
        'Shayne',
        'Seman',
        '(379) 9352870',
        'sseman3@over-blog.com',
        'GqOgeZ9VUr'
    ),
    (
        '8',
        'Cordie',
        'de Pinna',
        '(799) 2032276',
        'cdepinna4@theatlantic.com',
        'JT9GWg'
    ),
    (
        '64',
        'Konrad',
        'Allin',
        '(494) 8508881',
        'kallin5@photobucket.com',
        'X6BkPY4fx'
    ),
    (
        '56',
        'Kerry',
        'Pritchard',
        '(347) 3470821',
        'kpritchard6@nba.com',
        'eELceyIAUKH'
    ),
    (
        '10',
        'Chan',
        'Sawfoot',
        '(609) 3609208',
        'csawfoot7@github.io',
        '5bCrgEQlWod0'
    ),
    (
        '31',
        'Fabian',
        'Pittam',
        '(722) 6080251',
        'fpittam8@typepad.com',
        'zqd6gmX9'
    ),
    (
        '71',
        'Herbert',
        'Woolatt',
        '(487) 9782121',
        'hwoolatt9@sbwire.com',
        'XP0MRa'
    ),
    (
        '60',
        'Selene',
        'Niemetz',
        '(990) 9476690',
        'sniemetza@smh.com.au',
        '5MEAmcqxOJ1'
    ),
    (
        '45',
        'Chaddy',
        'Bentjens',
        '(344) 6856217',
        'cbentjensb@howstuffworks.com',
        'mIe9F5E5'
    ),
    (
        '3',
        'Elsi',
        'Maffin',
        '(959) 6158073',
        'emaffinc@mapquest.com',
        'wdP1vRf'
    ),
    (
        '25',
        'Kaitlyn',
        'Tugman',
        '(695) 8208584',
        'ktugmand@paginegialle.it',
        'TRIZ9wQ2K'
    ),
    (
        '13',
        'Gerrard',
        'Kybird',
        '(228) 9255594',
        'gkybirde@prweb.com',
        'Nz1PumPR1C1'
    ),
    (
        '17',
        'Pacorro',
        'Flanagan',
        '(709) 5287658',
        'pflanaganf@time.com',
        'miK7Ld8ks1x4'
    ),
    (
        '32',
        'Kaitlynn',
        'Neve',
        '(155) 7168624',
        'kneveg@stumbleupon.com',
        'qfFHIaVglI3'
    ),
    (
        '46',
        'Wilow',
        'Glasman',
        '(592) 5774511',
        'wglasmanh@ihg.com',
        'od4lrahgBZ86'
    ),
    (
        '34',
        'Barri',
        'Lydon',
        '(123) 1845837',
        'blydoni@nymag.com',
        'F2fCPEhaAgi'
    ),
    (
        '33',
        'Angil',
        'Colquete',
        '(737) 2917263',
        'acolquetej@eventbrite.com',
        'v3zlKj'
    ),
    (
        '37',
        'Chandler',
        'Ducarne',
        '(577) 1927439',
        'cducarnek@comcast.net',
        'xFWdgZgAqkji'
    ),
    (
        '28',
        'Anne-marie',
        'Calverd',
        '(228) 9803931',
        'acalverdl@slideshare.net',
        'AUW6ULX'
    ),
    (
        '12',
        'Alica',
        'Beazley',
        '(812) 7951827',
        'abeazleym@businesswire.com',
        'BwymdMFolT'
    ),
    (
        '39',
        'Dalli',
        'Chamberlen',
        '(323) 8261246',
        'dchamberlenn@constantcontact.com',
        'm6tNlypd'
    ),
    (
        '65',
        'Miles',
        'McQuarrie',
        '(273) 6295869',
        'mmcquarrieo@trellian.com',
        'R2JGZkdZ'
    ),
    (
        '47',
        'Andee',
        'Ortler',
        '(382) 6849969',
        'aortlerp@constantcontact.com',
        'eaexfneX'
    ),
    (
        '27',
        'Talya',
        'Chave',
        '(487) 1788017',
        'tchaveq@163.com',
        'mpaRxkk00KH'
    ),
    (
        '69',
        'Janel',
        'Boorne',
        '(485) 4992321',
        'jboorner@loc.gov',
        'kPMx89'
    ),
    (
        '16',
        'Enid',
        'Bate',
        '(473) 2461380',
        'ebates@yelp.com',
        'GuRCp9jw6u'
    ),
    (
        '66',
        'Othello',
        'Treversh',
        '(857) 8549442',
        'otreversht@hugedomains.com',
        'A7M1SrDRb1DL'
    );

CREATE TABLE FavoriteOrder (
    customer_id int NOT NULL,
    order_id int NOT NULL,
    name varchar(24) NOT NULL,
    PRIMARY KEY (customer_id, order_id),
    CONSTRAINT assoc_customer FOREIGN KEY (customer_id) REFERENCES Customer (customer_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fav_assoc_order FOREIGN KEY (order_id) REFERENCES CustomerOrder (order_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    FavoriteOrder (customer_id, order_id, name)
VALUES
    ('29', '51', 'The Jennine Classic'),
    ('4', '9', 'The Anthea'),
    ('24', '29', 'The Tilly'),
    ('27', '66', 'The Grantham'),
    ('8', '4', 'The Valina'),
    ('20', '68', 'The Eustace'),
    ('14', '38', 'The Towney'),
    ('23', '3', 'The Malia'),
    ('5', '39', 'The Idalina Special'),
    ('28', '58', 'The Antonius'),
    ('25', '13', 'The Arlen Switch-up'),
    ('2', '28', 'The Dall Special'),
    ('1', '18', 'The Yalonda Classic'),
    ('13', '24', 'The Deeyn Switch-up'),
    ('7', '49', 'The Hetty'),
    ('21', '25', 'The Vicky Switch-up'),
    ('22', '42', 'The Hadlee Special'),
    ('18', '31', 'The Carlie'),
    ('19', '1', 'The Tiphanie Classic'),
    ('3', '45', 'The Bartholomeus'),
    ('15', '22', 'The Harman'),
    ('11', '7', 'The Zaneta Classic'),
    ('10', '74', 'The Cash Special'),
    ('30', '12', 'The Idalia Switch-up'),
    ('26', '72', 'The Lovell Classic'),
    ('6', '75', 'The Jimmie'),
    ('17', '47', 'The Gena Special'),
    ('9', '36', 'The Nessie'),
    ('12', '23', 'The Suzy'),
    ('16', '44', 'The Milt'),
    ('22', '71', 'The Eydie'),
    ('23', '53', 'The Iormina Special'),
    ('7', '55', 'The Osbourn Special'),
    ('19', '52', 'The Loretta Switch-up'),
    ('13', '5', 'The Lesli Special'),
    ('3', '80', 'The Delphinia'),
    ('21', '15', 'The Kelcey Special'),
    ('11', '65', 'The Dougie Special'),
    ('4', '35', 'The Mellicent Switch-up'),
    ('14', '57', 'The Karlyn'),
    ('17', '78', 'The Tyrus'),
    ('2', '79', 'The Holden Switch-up'),
    ('10', '37', 'The Melodie'),
    ('24', '19', 'The Sonya Special'),
    ('16', '34', 'The Silvio Special'),
    ('9', '6', 'The Shep Switch-up'),
    ('26', '73', 'The Honor Switch-up'),
    ('5', '9', 'The Whit Special'),
    ('8', '11', 'The Vinita'),
    ('15', '63', 'The Marsh'),
    ('18', '41', 'The Andie Classic'),
    ('27', '21', 'The Cindra Special'),
    ('20', '20', 'The Brnaby Switch-up'),
    ('30', '54', 'The Valaria'),
    ('12', '32', 'The Cristi Special'),
    ('29', '26', 'The Pavlov'),
    ('6', '48', 'The Say Switch-up'),
    ('1', '10', 'The Ros'),
    ('28', '27', 'The Jena Special'),
    ('25', '56', 'The Gunilla Classic'),
    ('24', '33', 'The Rozelle Classic'),
    ('13', '76', 'The Scarlet'),
    ('17', '70', 'The Adelind Switch-up'),
    ('26', '77', 'The Mildrid'),
    ('14', '14', 'The Bentlee Switch-up'),
    ('3', '50', 'The Doroteya'),
    ('6', '16', 'The Levon'),
    ('18', '61', 'The Aloysia Special'),
    ('2', '60', 'The Reggis Switch-up'),
    ('10', '17', 'The Teddie'),
    ('4', '46', 'The Dominica Classic'),
    ('15', '30', 'The Sampson Special'),
    ('30', '67', 'The Raina Classic'),
    ('19', '69', 'The Monah'),
    ('20', '64', 'The Darbee Special'),
    ('28', '2', 'The Fred Switch-up'),
    ('27', '40', 'The Jorgan'),
    ('23', '43', 'The Brigitta Switch-up'),
    ('21', '62', 'The Franny Classic'),
    ('25', '59', 'The Edmund Classic'),
    ('29', '27', 'The Ava Special'),
    ('16', '7', 'The Dannie Switch-up'),
    ('1', '80', 'The Haleigh Switch-up'),
    ('8', '74', 'The Gherardo Special'),
    ('7', '5', 'The Chrotoem'),
    ('12', '73', 'The Dale'),
    ('9', '30', 'The Gabey'),
    ('11', '29', 'The Rosa'),
    ('22', '43', 'The Sharyl Classic'),
    ('5', '25', 'The Claudio'),
    ('8', '1', 'The Maddy'),
    ('13', '3', 'The Mandy Switch-up'),
    ('18', '76', 'The Shaylynn'),
    ('10', '9', 'The Marita'),
    ('27', '17', 'The Bradford'),
    ('2', '38', 'The Leland Classic'),
    ('20', '78', 'The Jessalyn'),
    ('25', '34', 'The Jordon Classic'),
    ('7', '53', 'The Chadd'),
    ('19', '56', 'The Shanna Special'),
    ('11', '10', 'The Peadar Special'),
    ('4', '48', 'The Pearl'),
    ('21', '16', 'The Coleen Classic'),
    ('1', '24', 'The Derek Special'),
    ('22', '46', 'The Edouard Special'),
    ('16', '52', 'The Berti'),
    ('12', '18', 'The Xena Special'),
    ('3', '32', 'The Aylmer Switch-up'),
    ('24', '49', 'The Hetty'),
    ('17', '72', 'The Lil'),
    ('5', '58', 'The Claudina'),
    ('15', '77', 'The Delmore Classic'),
    ('30', '51', 'The Rolph'),
    ('28', '75', 'The Marget'),
    ('9', '28', 'The Vittorio Classic'),
    ('23', '64', 'The Doyle Classic'),
    ('26', '13', 'The Manda'),
    ('29', '25', 'The Stevy Classic'),
    ('6', '79', 'The Alphonso Special'),
    ('14', '11', 'The Garnette Special'),
    ('19', '65', 'The Aeriel'),
    ('30', '20', 'The Tyson'),
    ('6', '54', 'The Paxon Switch-up'),
    ('9', '12', 'The Katerine Switch-up'),
    ('22', '41', 'The Thedrick Classic'),
    ('25', '2', 'The Seward Classic'),
    ('23', '57', 'The Loni Special'),
    ('26', '6', 'The Bondon Special'),
    ('13', '70', 'The Karina'),
    ('16', '59', 'The Delphine Classic'),
    ('20', '15', 'The Arlen'),
    ('15', '66', 'The Catina Special'),
    ('18', '37', 'The Tim Special'),
    ('4', '8', 'The Cully Special'),
    ('3', '61', 'The Tory'),
    ('2', '19', 'The Jessika Switch-up'),
    ('7', '39', 'The Yelena'),
    ('14', '69', 'The Kathi Special'),
    ('8', '35', 'The Mei Classic'),
    ('11', '71', 'The Conrade'),
    ('17', '55', 'The Dolli Special'),
    ('21', '44', 'The Ricardo'),
    ('1', '4', 'The Tarrance'),
    ('29', '22', 'The Al Switch-up'),
    ('5', '33', 'The Creight Classic'),
    ('27', '47', 'The Bevvy'),
    ('10', '40', 'The Eddie'),
    ('24', '45', 'The Orrin Special'),
    ('12', '68', 'The Lelah'),
    ('28', '63', 'The Cathlene Classic');

CREATE TABLE OrderLine (
    order_line_id int AUTO_INCREMENT NOT NULL,
    order_id int NOT NULL,
    menu_item_id int NOT NULL,
    quantity smallint NOT NULL,
    PRIMARY KEY (order_line_id),
    CONSTRAINT ol_assoc_order FOREIGN KEY (order_id) REFERENCES CustomerOrder (order_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT ol_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    OrderLine (order_id, menu_item_id, quantity)
VALUES
    ('18', 27, 15),
    ('53', 1, 56),
    ('71', 2, 16),
    ('33', 3, 20),
    ('48', 4, 6),
    ('19', 5, 12),
    ('67', 6, 56),
    ('63', 16, 91),
    ('58', 8, 96),
    ('15', 9, 21),
    ('78', 10, 36),
    ('7', 11, 81),
    ('3', 12, 9),
    ('25', 13, 19),
    ('21', 14, 3),
    ('39', 15, 44),
    ('56', 17, 48),
    ('40', 18, 6),
    ('73', 19, 88),
    ('28', 20, 32),
    ('42', 21, 60),
    ('31', 22, 18),
    ('52', 23, 16),
    ('69', 24, 35),
    ('66', 25, 23),
    ('10', 26, 70),
    ('30', 28, 34),
    ('49', 29, 90),
    ('32', 30, 46),
    ('34', 7, 43),
    ('38', 4, 35),
    ('17', 5, 13),
    ('72', 26, 46),
    ('79', 27, 76),
    ('61', 21, 89),
    ('60', 8, 37),
    ('64', 12, 6),
    ('75', 30, 28),
    ('20', 16, 96),
    ('16', 19, 5),
    ('80', 24, 23),
    ('12', 3, 4),
    ('51', 23, 13),
    ('43', 10, 17),
    ('59', 22, 99),
    ('22', 14, 68),
    ('74', 18, 23),
    ('45', 17, 14),
    ('65', 25, 97),
    ('62', 11, 54),
    ('36', 1, 91),
    ('5', 15, 66),
    ('54', 13, 64),
    ('8', 2, 70),
    ('24', 28, 81),
    ('35', 9, 25),
    ('4', 6, 41),
    ('70', 7, 60),
    ('11', 20, 15),
    ('77', 29, 83),
    ('50', 24, 55),
    ('46', 7, 80),
    ('44', 29, 8),
    ('47', 8, 15),
    ('26', 3, 31),
    ('29', 12, 32),
    ('13', 10, 79),
    ('27', 15, 42),
    ('23', 18, 96),
    ('41', 26, 45),
    ('68', 19, 32),
    ('37', 4, 16),
    ('76', 28, 28),
    ('9', 21, 29),
    ('2', 25, 60),
    ('57', 1, 69),
    ('14', 17, 91),
    ('1', 6, 64),
    ('55', 20, 82),
    ('6', 5, 26);

CREATE TABLE MenuItemDietaryRestriction (
    menu_item_id int NOT NULL,
    dietary_restriction_id int NOT NULL,
    PRIMARY KEY (menu_item_id, dietary_restriction_id),
    CONSTRAINT midr_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT midr_assoc_dietary_restriction FOREIGN KEY (dietary_restriction_id) REFERENCES DietaryRestriction (dietary_restriction_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    MenuItemDietaryRestriction (menu_item_id, dietary_restriction_id)
VALUES
    (16, 1),
    (7, 2),
    (20, 3),
    (4, 4),
    (9, 5),
    (29, 6),
    (12, 7),
    (27, 8),
    (17, 9),
    (13, 10),
    (2, 1),
    (23, 2),
    (21, 3),
    (30, 4),
    (15, 5),
    (11, 6),
    (18, 7),
    (19, 8),
    (1, 9),
    (28, 10),
    (25, 1),
    (22, 2),
    (3, 3),
    (6, 4),
    (14, 5),
    (10, 6),
    (8, 7),
    (5, 8),
    (26, 9),
    (24, 10),
    (1, 1),
    (28, 2),
    (6, 3),
    (25, 4),
    (16, 5),
    (12, 6),
    (23, 7),
    (14, 8),
    (7, 9),
    (21, 10),
    (18, 1),
    (27, 2),
    (17, 2),
    (22, 4),
    (30, 5),
    (20, 6),
    (9, 7),
    (5, 3),
    (19, 9),
    (11, 10),
    (26, 3),
    (29, 1),
    (10, 2),
    (24, 3),
    (15, 4),
    (8, 5),
    (13, 6),
    (4, 7),
    (2, 8),
    (3, 9),
    (22, 10),
    (7, 1),
    (20, 2),
    (17, 3),
    (11, 4),
    (23, 5),
    (28, 6),
    (26, 7),
    (29, 8),
    (3, 6),
    (13, 4),
    (21, 1),
    (12, 2),
    (2, 3),
    (10, 4),
    (15, 9),
    (19, 6),
    (30, 7),
    (8, 8),
    (18, 9),
    (14, 10),
    (6, 1),
    (25, 2),
    (4, 3),
    (16, 4),
    (5, 5),
    (9, 6),
    (27, 7),
    (1, 8),
    (24, 9),
    (11, 2),
    (26, 1),
    (28, 3),
    (19, 3),
    (8, 4),
    (10, 5),
    (18, 6),
    (3, 7),
    (2, 7),
    (9, 9),
    (25, 10),
    (12, 1),
    (24, 2),
    (6, 9),
    (5, 4),
    (7, 5),
    (29, 5),
    (17, 6),
    (15, 8),
    (1, 3),
    (27, 10),
    (14, 1),
    (30, 2),
    (21, 6),
    (4, 5),
    (20, 5),
    (16, 6),
    (22, 7),
    (13, 8),
    (23, 9),
    (6, 10),
    (1, 5),
    (15, 2),
    (25, 3),
    (26, 4),
    (12, 5),
    (30, 6),
    (17, 7),
    (19, 1),
    (4, 9),
    (5, 10),
    (13, 1),
    (14, 2),
    (16, 3),
    (22, 9),
    (24, 5),
    (2, 6),
    (23, 3),
    (28, 8),
    (27, 9),
    (7, 10),
    (29, 4),
    (20, 7),
    (10, 3),
    (8, 2),
    (18, 5),
    (11, 8),
    (21, 7),
    (3, 8),
    (9, 10);

CREATE TABLE MenuItemCategory (
    menu_item_id int NOT NULL,
    category_id int NOT NULL,
    PRIMARY KEY (menu_item_id, category_id),
    CONSTRAINT mic_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mic_assoc_category FOREIGN KEY (category_id) REFERENCES Category (category_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    MenuItemCategory (menu_item_id, category_id)
VALUES
    (23, 8),
    (12, 5),
    (11, 9),
    (2, 2),
    (3, 2),
    (28, 8),
    (18, 3),
    (25, 1),
    (13, 10),
    (10, 5),
    (20, 2),
    (30, 9),
    (21, 4),
    (16, 4),
    (9, 9),
    (19, 6),
    (4, 10),
    (6, 7),
    (14, 1),
    (17, 2),
    (7, 7),
    (15, 6),
    (22, 4),
    (5, 1),
    (24, 5),
    (27, 3),
    (29, 6),
    (26, 3),
    (1, 10),
    (8, 9),
    (30, 5),
    (12, 2),
    (20, 3),
    (7, 10),
    (1, 4),
    (24, 2),
    (2, 4),
    (17, 6),
    (13, 1),
    (25, 2),
    (26, 2),
    (8, 7),
    (23, 10),
    (6, 3),
    (29, 7),
    (4, 8),
    (18, 6),
    (21, 9),
    (19, 10),
    (28, 9),
    (27, 2),
    (16, 5),
    (22, 8),
    (15, 3),
    (11, 10),
    (14, 8),
    (3, 8),
    (9, 5),
    (10, 2),
    (5, 5),
    (20, 5),
    (12, 4),
    (3, 5),
    (11, 3),
    (15, 5),
    (19, 3),
    (8, 6),
    (22, 5),
    (7, 2),
    (21, 6),
    (26, 6),
    (9, 4),
    (23, 7),
    (6, 9),
    (29, 8),
    (13, 4),
    (25, 5),
    (1, 3),
    (28, 2),
    (16, 8),
    (2, 3),
    (27, 10),
    (18, 7),
    (5, 4),
    (30, 7),
    (17, 8),
    (10, 6),
    (14, 5),
    (24, 9),
    (4, 7),
    (13, 9),
    (9, 3),
    (21, 7),
    (3, 7),
    (23, 1),
    (27, 7),
    (16, 10),
    (20, 1),
    (28, 10),
    (15, 9),
    (30, 6),
    (12, 7),
    (18, 9),
    (5, 10),
    (22, 2),
    (24, 7),
    (11, 4),
    (10, 8),
    (4, 4),
    (7, 8),
    (1, 8),
    (19, 8),
    (17, 9),
    (6, 2),
    (2, 8),
    (26, 4),
    (8, 2),
    (29, 10),
    (25, 10),
    (14, 4),
    (6, 6),
    (27, 1),
    (25, 3),
    (11, 7),
    (4, 1),
    (18, 4),
    (21, 3),
    (30, 2),
    (2, 10),
    (10, 3),
    (17, 7),
    (22, 10),
    (28, 6),
    (14, 6),
    (26, 9),
    (8, 1),
    (7, 3),
    (1, 6),
    (19, 5),
    (29, 5),
    (20, 4),
    (5, 6),
    (15, 1),
    (9, 10),
    (24, 3),
    (12, 6),
    (23, 3),
    (16, 1),
    (3, 1),
    (13, 2);

CREATE TABLE MenuItemIngredient (
    menu_item_id int NOT NULL,
    ingredient_id int NOT NULL,
    PRIMARY KEY (menu_item_id, ingredient_id),
    CONSTRAINT mii_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mii_assoc_ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient (ingredient_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    MenuItemIngredient (menu_item_id, ingredient_id)
VALUES
    (12, '14'),
    (7, '8'),
    (14, '4'),
    (28, '11'),
    (17, '73'),
    (3, '44'),
    (1, '53'),
    (5, '33'),
    (21, '32'),
    (23, '23'),
    (4, '68'),
    (16, '64'),
    (19, '7'),
    (27, '10'),
    (29, '9'),
    (24, '78'),
    (9, '79'),
    (22, '28'),
    (13, '55'),
    (20, '74'),
    (6, '38'),
    (8, '19'),
    (30, '25'),
    (10, '56'),
    (2, '3'),
    (15, '52'),
    (18, '51'),
    (11, '47'),
    (25, '35'),
    (26, '48'),
    (5, '37'),
    (23, '45'),
    (29, '18'),
    (19, '75'),
    (17, '57'),
    (11, '61'),
    (21, '67'),
    (25, '30'),
    (30, '66'),
    (28, '60'),
    (14, '39'),
    (2, '17'),
    (22, '21'),
    (26, '2'),
    (4, '42'),
    (20, '6'),
    (18, '1'),
    (6, '80'),
    (27, '54'),
    (10, '71'),
    (13, '27'),
    (12, '50'),
    (15, '77'),
    (8, '63'),
    (24, '15'),
    (3, '62'),
    (7, '59'),
    (16, '12'),
    (9, '20'),
    (1, '16'),
    (15, '43'),
    (28, '70'),
    (9, '41'),
    (23, '22'),
    (18, '5'),
    (26, '69'),
    (22, '65'),
    (7, '13'),
    (16, '46'),
    (2, '36'),
    (17, '58'),
    (24, '29'),
    (10, '49'),
    (5, '40'),
    (1, '31'),
    (8, '25'),
    (12, '72'),
    (3, '34'),
    (25, '24'),
    (14, '76'),
    (21, '65'),
    (4, '12'),
    (19, '43'),
    (6, '1'),
    (13, '32'),
    (29, '42'),
    (20, '57'),
    (11, '73'),
    (27, '48'),
    (30, '33'),
    (20, '72'),
    (30, '58'),
    (6, '10'),
    (9, '66'),
    (4, '52'),
    (29, '77'),
    (19, '9'),
    (5, '14'),
    (27, '63'),
    (15, '62'),
    (1, '41'),
    (11, '2'),
    (16, '25'),
    (3, '19'),
    (23, '37'),
    (10, '15'),
    (24, '30'),
    (22, '45'),
    (17, '80'),
    (2, '34'),
    (13, '36'),
    (26, '68'),
    (8, '26'),
    (21, '76'),
    (18, '9'),
    (7, '61'),
    (12, '4'),
    (28, '38'),
    (14, '8'),
    (25, '22'),
    (12, '53'),
    (29, '39'),
    (17, '54'),
    (16, '7'),
    (23, '70'),
    (19, '23'),
    (24, '28'),
    (11, '60'),
    (27, '40'),
    (20, '29'),
    (18, '13'),
    (26, '79'),
    (1, '78'),
    (22, '16'),
    (30, '49'),
    (4, '44'),
    (3, '6'),
    (13, '51'),
    (21, '75'),
    (8, '20'),
    (25, '3'),
    (14, '17'),
    (7, '46'),
    (9, '55'),
    (15, '24'),
    (28, '67'),
    (2, '74'),
    (6, '21'),
    (10, '31'),
    (5, '56');

CREATE TABLE IngredientOrder (
    ingredient_order_id int AUTO_INCREMENT NOT NULL,
    supplier_id int NOT NULL,
    date_placed datetime DEFAULT CURRENT_TIMESTAMP,
    date_received datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (ingredient_order_id),
    CONSTRAINT io_assoc_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    IngredientOrder (supplier_id, date_placed, date_received)
VALUES
    (
        '55',
        '2022-04-24 05:46:14',
        '2022-09-23 16:02:58'
    ),
    (
        '43',
        '2022-01-24 19:00:50',
        '2022-12-02 21:09:38'
    ),
    (
        '41',
        '2022-01-04 10:44:42',
        '2022-10-10 13:11:57'
    ),
    (
        '58',
        '2022-01-03 16:08:40',
        '2022-08-15 05:03:52'
    ),
    (
        '40',
        '2021-12-06 11:25:06',
        '2022-07-09 20:12:18'
    ),
    (
        '6',
        '2022-05-31 04:27:59',
        '2022-07-26 21:27:38'
    ),
    (
        '37',
        '2022-02-02 20:57:44',
        '2022-08-04 05:51:57'
    ),
    (
        '22',
        '2022-03-06 07:56:04',
        '2022-08-26 02:13:14'
    ),
    (
        '13',
        '2022-05-02 06:14:33',
        '2022-09-28 18:54:23'
    ),
    (
        '30',
        '2022-05-28 00:45:40',
        '2022-09-09 13:35:41'
    ),
    (
        '29',
        '2021-12-26 03:12:01',
        '2022-11-15 03:18:55'
    ),
    (
        '19',
        '2021-12-28 21:52:20',
        '2022-08-06 15:37:45'
    ),
    (
        '50',
        '2022-03-01 14:57:39',
        '2022-08-16 08:18:48'
    ),
    (
        '28',
        '2022-04-16 00:01:27',
        '2022-07-12 11:01:18'
    ),
    (
        '46',
        '2022-01-12 16:57:46',
        '2022-07-18 22:36:21'
    ),
    (
        '70',
        '2022-01-08 16:17:04',
        '2022-07-18 08:57:15'
    ),
    (
        '3',
        '2022-02-06 16:55:37',
        '2022-10-31 16:12:06'
    ),
    (
        '36',
        '2022-01-08 02:46:47',
        '2022-09-12 23:44:17'
    ),
    (
        '66',
        '2021-12-09 12:07:36',
        '2022-11-12 09:08:26'
    ),
    (
        '25',
        '2022-03-23 09:29:43',
        '2022-08-26 00:14:47'
    ),
    (
        '5',
        '2022-04-29 02:18:12',
        '2022-10-30 21:07:53'
    ),
    (
        '2',
        '2022-04-10 20:38:15',
        '2022-10-17 11:41:26'
    ),
    (
        '74',
        '2022-02-07 05:39:18',
        '2022-07-02 13:53:30'
    ),
    (
        '62',
        '2022-02-08 15:00:00',
        '2022-08-11 17:55:02'
    ),
    (
        '72',
        '2021-12-29 01:52:49',
        '2022-11-03 17:53:14'
    ),
    (
        '12',
        '2022-04-20 23:10:27',
        '2022-07-31 02:26:26'
    ),
    (
        '57',
        '2022-03-06 23:15:34',
        '2022-10-15 00:50:52'
    ),
    (
        '80',
        '2021-12-23 08:58:26',
        '2022-10-27 19:29:43'
    ),
    (
        '32',
        '2022-03-18 06:29:32',
        '2022-11-11 15:44:58'
    ),
    (
        '71',
        '2022-03-23 00:11:08',
        '2022-09-30 20:11:21'
    ),
    (
        '20',
        '2022-01-17 19:42:38',
        '2022-10-31 23:11:44'
    ),
    (
        '59',
        '2021-12-31 23:04:21',
        '2022-08-23 08:51:40'
    ),
    (
        '17',
        '2022-04-30 12:30:51',
        '2022-07-05 07:07:21'
    ),
    (
        '26',
        '2022-03-01 13:06:51',
        '2022-08-11 18:09:21'
    ),
    (
        '16',
        '2022-05-27 20:39:32',
        '2022-07-10 02:48:41'
    ),
    (
        '14',
        '2022-05-13 06:44:35',
        '2022-09-12 22:00:36'
    ),
    (
        '52',
        '2022-02-17 07:38:04',
        '2022-09-26 19:24:37'
    ),
    (
        '7',
        '2022-03-12 04:30:08',
        '2022-07-26 06:03:41'
    ),
    (
        '42',
        '2022-01-22 01:35:02',
        '2022-08-21 12:48:02'
    ),
    (
        '9',
        '2022-06-01 13:03:39',
        '2022-06-13 17:21:13'
    ),
    (
        '1',
        '2021-12-22 00:01:38',
        '2022-09-20 11:22:27'
    ),
    (
        '24',
        '2022-03-05 23:24:02',
        '2022-07-05 03:48:09'
    ),
    (
        '48',
        '2021-12-17 10:18:30',
        '2022-09-21 01:40:14'
    ),
    (
        '35',
        '2021-12-16 05:39:04',
        '2022-11-01 18:59:46'
    ),
    (
        '63',
        '2022-03-22 13:25:15',
        '2022-11-08 19:30:57'
    ),
    (
        '61',
        '2022-05-23 01:05:06',
        '2022-08-12 15:20:02'
    ),
    (
        '23',
        '2022-05-20 17:22:41',
        '2022-08-08 08:30:33'
    ),
    (
        '15',
        '2021-12-14 20:59:08',
        '2022-11-18 01:34:15'
    ),
    (
        '18',
        '2022-03-28 18:02:08',
        '2022-10-16 07:26:28'
    ),
    (
        '27',
        '2021-12-10 00:58:02',
        '2022-08-12 05:03:21'
    ),
    (
        '69',
        '2022-04-19 22:01:00',
        '2022-09-30 22:12:28'
    ),
    (
        '39',
        '2022-05-20 04:40:30',
        '2022-10-16 20:00:24'
    ),
    (
        '31',
        '2022-06-02 08:14:16',
        '2022-08-20 02:11:12'
    ),
    (
        '51',
        '2022-02-05 15:20:04',
        '2022-06-13 04:00:02'
    ),
    (
        '60',
        '2022-05-04 01:16:29',
        '2022-08-15 17:46:19'
    ),
    (
        '56',
        '2022-03-24 16:04:14',
        '2022-11-06 13:43:00'
    ),
    (
        '34',
        '2022-04-17 17:50:44',
        '2022-11-27 12:13:09'
    ),
    (
        '79',
        '2022-03-03 20:33:05',
        '2022-06-16 03:59:39'
    ),
    (
        '49',
        '2022-04-29 23:31:36',
        '2022-11-12 13:04:06'
    ),
    (
        '21',
        '2022-02-14 04:51:42',
        '2022-07-08 15:27:19'
    ),
    (
        '68',
        '2022-04-11 19:54:09',
        '2022-07-13 22:42:55'
    ),
    (
        '11',
        '2022-03-15 12:52:30',
        '2022-08-20 23:05:01'
    ),
    (
        '54',
        '2022-02-22 02:35:43',
        '2022-07-23 04:34:40'
    ),
    (
        '67',
        '2022-04-02 05:39:40',
        '2022-06-18 17:53:46'
    ),
    (
        '44',
        '2022-04-30 00:05:03',
        '2022-08-16 20:23:16'
    ),
    (
        '78',
        '2022-03-14 09:46:22',
        '2022-11-18 23:35:00'
    ),
    (
        '53',
        '2022-02-07 05:13:46',
        '2022-07-03 16:14:46'
    ),
    (
        '65',
        '2021-12-20 11:02:47',
        '2022-07-04 08:51:12'
    ),
    (
        '45',
        '2022-03-19 11:34:52',
        '2022-11-09 14:50:10'
    ),
    (
        '8',
        '2022-05-07 16:24:05',
        '2022-10-31 13:34:37'
    ),
    (
        '38',
        '2021-12-24 18:00:53',
        '2022-06-17 04:27:47'
    ),
    (
        '73',
        '2021-12-23 15:59:04',
        '2022-08-15 21:15:59'
    ),
    (
        '47',
        '2022-04-04 22:50:03',
        '2022-11-11 16:50:53'
    ),
    (
        '77',
        '2022-02-26 04:04:22',
        '2022-09-19 13:36:01'
    ),
    (
        '10',
        '2022-01-17 18:51:24',
        '2022-11-05 13:42:19'
    ),
    (
        '76',
        '2022-02-02 08:55:44',
        '2022-07-24 12:51:52'
    ),
    (
        '64',
        '2022-03-22 16:46:29',
        '2022-08-27 04:22:28'
    ),
    (
        '75',
        '2022-02-21 02:50:05',
        '2022-07-20 00:30:12'
    ),
    (
        '33',
        '2022-02-25 18:10:01',
        '2022-11-17 19:16:42'
    ),
    (
        '4',
        '2022-02-20 14:26:23',
        '2022-08-05 05:31:16'
    );

CREATE TABLE IngredientOrderLine (
    ingredient_order_line_id int AUTO_INCREMENT NOT NULL,
    ingredient_id int NOT NULL,
    ingredient_order_id int NOT NULL,
    quantity smallint NOT NULL,
    PRIMARY KEY (ingredient_order_line_id),
    CONSTRAINT iol_assoc_ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient (ingredient_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT iol_assoc_ingredient_order FOREIGN KEY (ingredient_order_id) REFERENCES IngredientOrder (ingredient_order_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO
    IngredientOrderLine (ingredient_id, ingredient_order_id, quantity)
VALUES
    ('42', '35', 280),
    ('16', '22', 306),
    ('36', '54', 623),
    ('34', '41', 250),
    ('53', '6', 814),
    ('56', '43', 643),
    ('48', '31', 89),
    ('26', '74', 281),
    ('68', '77', 303),
    ('7', '79', 838),
    ('29', '69', 826),
    ('8', '37', 512),
    ('15', '44', 181),
    ('38', '10', 303),
    ('6', '46', 236),
    ('71', '80', 884),
    ('57', '26', 984),
    ('77', '78', 905),
    ('80', '42', 207),
    ('5', '32', 269),
    ('41', '58', 974),
    ('22', '4', 952),
    ('58', '28', 478),
    ('27', '45', 996),
    ('19', '60', 306),
    ('50', '48', 410),
    ('40', '8', 887),
    ('61', '47', 334),
    ('35', '13', 190),
    ('28', '14', 53),
    ('64', '68', 933),
    ('49', '18', 156),
    ('59', '59', 572),
    ('12', '75', 971),
    ('70', '34', 179),
    ('75', '23', 41),
    ('43', '67', 982),
    ('60', '36', 653),
    ('30', '53', 966),
    ('79', '16', 791),
    ('72', '25', 552),
    ('73', '49', 357),
    ('32', '51', 938),
    ('63', '65', 749),
    ('23', '52', 717),
    ('54', '20', 507),
    ('17', '39', 834),
    ('51', '7', 472),
    ('44', '29', 847),
    ('45', '5', 505),
    ('55', '27', 95),
    ('3', '9', 581),
    ('37', '61', 603),
    ('65', '56', 185),
    ('33', '24', 99),
    ('14', '57', 696),
    ('9', '17', 407),
    ('10', '19', 592),
    ('69', '40', 191),
    ('18', '38', 589),
    ('25', '12', 10),
    ('4', '1', 282),
    ('39', '55', 410),
    ('76', '64', 278),
    ('78', '73', 543),
    ('24', '15', 509),
    ('62', '70', 748),
    ('21', '3', 758),
    ('13', '63', 135),
    ('20', '50', 636),
    ('46', '71', 264),
    ('74', '76', 158),
    ('47', '66', 182),
    ('66', '33', 641),
    ('31', '30', 774),
    ('1', '62', 845),
    ('67', '72', 946),
    ('11', '21', 651),
    ('2', '2', 572),
    ('52', '48', 258),
    ('59', '51', 410),
    ('72', '41', 565),
    ('80', '13', 974),
    ('78', '3', 406),
    ('17', '44', 4),
    ('19', '5', 182),
    ('62', '46', 140),
    ('74', '26', 310),
    ('1', '16', 175),
    ('41', '9', 446),
    ('47', '76', 446),
    ('68', '54', 537),
    ('51', '65', 880),
    ('33', '47', 684),
    ('46', '72', 928),
    ('30', '58', 430),
    ('67', '1', 78),
    ('56', '2', 804),
    ('28', '38', 775),
    ('34', '20', 854),
    ('21', '28', 148),
    ('13', '68', 868),
    ('42', '33', 342),
    ('39', '15', 155),
    ('65', '49', 256),
    ('25', '10', 507),
    ('10', '14', 52),
    ('71', '29', 792),
    ('2', '27', 326),
    ('64', '71', 363),
    ('5', '32', 851),
    ('20', '8', 544),
    ('38', '61', 134),
    ('79', '77', 243),
    ('8', '53', 42),
    ('69', '6', 790),
    ('14', '34', 946),
    ('18', '35', 17),
    ('35', '36', 559),
    ('36', '63', 522),
    ('22', '4', 346),
    ('7', '62', 232),
    ('57', '31', 94),
    ('32', '64', 81),
    ('9', '70', 691),
    ('40', '17', 324),
    ('15', '66', 411),
    ('54', '21', 270),
    ('50', '37', 475),
    ('45', '19', 820),
    ('11', '59', 248),
    ('63', '75', 10),
    ('23', '7', 741),
    ('4', '69', 411),
    ('16', '18', 414),
    ('26', '79', 817),
    ('12', '11', 296),
    ('53', '74', 532),
    ('77', '39', 541),
    ('70', '45', 327),
    ('31', '43', 245),
    ('29', '55', 347),
    ('44', '50', 461),
    ('76', '42', 688),
    ('60', '73', 122),
    ('49', '40', 637),
    ('73', '60', 466),
    ('24', '24', 515),
    ('55', '22', 927),
    ('27', '80', 372);