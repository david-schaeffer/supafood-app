CREATE DATABASE restaurant_db;

DROP USER 'webapp';

CREATE USER 'webapp'@'%' IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES ON restaurant_db.* TO 'webapp' @'%';

FLUSH PRIVILEGES;

USE restaurant_db;

-- DDL
CREATE TABLE CustomerOrder
(
    order_id       int         NOT NULL,
    order_type     varchar(24) NOT NULL,
    date_placed    datetime DEFAULT CURRENT_TIMESTAMP,
    date_completed datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    queue_order    smallint    NOT NULL,
    order_status   varchar(24) NOT NULL,
    PRIMARY KEY (order_id)
);

INSERT INTO CustomerOrder (order_id,
                           queue_order,
                           date_placed,
                           date_completed,
                           order_type,
                           order_status)
VALUES (1,
        15,
        '2021-11-23 07:29:39',
        '2021-11-24 08:09:53',
        'takeout',
        'in progress'),
       (2,
        82,
        '2021-11-23 05:50:42',
        '2021-11-24 14:10:38',
        'takeout',
        'issue'),
       (3,
        74,
        '2021-11-23 13:50:29',
        '2021-11-24 15:18:34',
        'takeout',
        'received'),
       (4,
        27,
        '2021-11-23 23:55:54',
        '2021-11-24 10:36:26',
        'takeout',
        'in progress'),
       (5,
        63,
        '2021-11-23 04:15:36',
        '2021-11-24 03:13:45',
        'takeout',
        'completed'),
       (6,
        52,
        '2021-11-23 17:18:22',
        '2021-11-24 23:02:03',
        'takeout',
        'in progress'),
       (7,
        14,
        '2021-11-23 09:38:37',
        '2021-11-24 10:43:22',
        'delivery',
        'completed'),
       (8,
        90,
        '2021-11-23 13:02:41',
        '2021-11-24 22:09:58',
        'dine in',
        'received'),
       (9,
        89,
        '2021-11-23 20:02:27',
        '2021-11-24 12:46:40',
        'delivery',
        'received'),
       (10,
        81,
        '2021-11-23 20:24:06',
        '2021-11-24 14:06:43',
        'delivery',
        'completed');

CREATE TABLE DietaryRestriction
(
    dietary_restriction_id int         NOT NULL,
    name                   varchar(24) NOT NULL,
    PRIMARY KEY (dietary_restriction_id)
);

INSERT INTO DietaryRestriction (dietary_restriction_id, name)
VALUES (1, 'integer'),
       (2, 'enim'),
       (3, 'vitae'),
       (4, 'eu'),
       (5, 'faucibus'),
       (6, 'amet'),
       (7, 'vivamus'),
       (8, 'proin'),
       (9, 'mollis'),
       (10, 'eu');

CREATE TABLE MenuItem
(
    menu_item_id varchar(16)    NOT NULL,
    calories     smallint       NOT NULL,
    description  varchar(100)   NOT NULL,
    name         varchar(24)    NOT NULL,
    unit_price   decimal(10, 2) NOT NULL,
    active       boolean        NOT NULL,
    PRIMARY KEY (menu_item_id)
);

INSERT INTO MenuItem (menu_item_id,
                      name,
                      description,
                      unit_price,
                      calories,
                      active)
VALUES ('ra06KyWlJJGL',
        'mauris',
        'tempor turpis nec euismod scelerisque',
        8.05,
        388,
        false),
       ('e6GjCZMrcfnc',
        'integer',
        'sed justo pellentesque viverra pede ac diam cras',
        23.9,
        541,
        false),
       ('qpRqN7qy202I',
        'ultrices',
        'at feugiat non pretium',
        2.31,
        575,
        false),
       ('lWrqsKKuWfLL',
        'metus',
        'vel enim sit amet nunc viverra',
        37.06,
        491,
        TRUE),
       ('kTBqySN3Soow',
        'enim',
        'eleifend donec ut dolor morbi vel lectus',
        5.65,
        448,
        false),
       ('mlT2zIBAWnFw',
        'diam',
        'nibh in quis justo maecenas',
        4.2,
        424,
        TRUE),
       ('nHXAWx6A8L5D',
        'dapibus',
        'orci vehicula condimentum curabitur in libero',
        28.87,
        767,
        false),
       ('9Zjh8hUV8u3M',
        'at',
        'ipsum aliquam non',
        29.43,
        350,
        false),
       ('kHBVJbV4bNQ0',
        'aenean',
        'vel lectus in quam fringilla rhoncus mauris',
        36.96,
        511,
        false),
       ('nkkJDDK2Nm1i',
        'convallis',
        'non velit donec',
        39.79,
        242,
        TRUE);

CREATE TABLE Category
(
    category_id int          NOT NULL,
    name        varchar(24)  NOT NULL,
    description varchar(100) NOT NULL,
    PRIMARY KEY (category_id)
);

INSERT INTO Category (category_id, name, description)
VALUES (1, 'ipsum', 'duis bibendum morbi non'),
       (2, 'orci', 'sapien ut'),
       (3, 'nulla', 'sapien sapien non mi integer ac'),
       (4, 'felis', 'eros suspendisse accumsan'),
       (5, 'integer', 'amet lobortis'),
       (6, 'nisl', 'ut massa quis'),
       (7, 'posuere', 'ut dolor'),
       (8, 'in', 'penatibus et magnis dis parturient'),
       (9, 'lectus', 'neque duis bibendum morbi non'),
       (10,
        'turpis',
        'a odio in hac habitasse platea dictumst maecenas');

CREATE TABLE Ingredient
(
    ingredient_id   int         NOT NULL,
    name            varchar(60) NOT NULL,
    amount_in_stock int         NOT NULL,
    PRIMARY KEY (ingredient_id)
);

INSERT INTO Ingredient (ingredient_id, name, amount_in_stock)
VALUES (1, 'Pie Box - Cello Window 2.5', 781),
       (2, 'Corn - On The Cob', 39),
       (3, 'Sour Cream', 273),
       (4, 'Versatainer Nc - 888', 787),
       (5, 'Bagel - Everything Presliced', 811),
       (6, 'Juice - Lemon', 596),
       (7, 'Hot Chocolate - Individual', 611),
       (8, 'Arctic Char - Fresh, Whole', 694),
       (9, 'Tart - Lemon', 543),
       (10, 'Jam - Apricot', 780);

CREATE TABLE Supplier
(
    supplier_id  int         NOT NULL,
    company_name varchar(24) NOT NULL,
    phone        varchar(20),
    contact_name varchar(24) NOT NULL,
    address      varchar(60),
    city         varchar(60),
    state        varchar(24),
    zip_code     varchar(5),
    PRIMARY KEY (supplier_id)
);

INSERT INTO Supplier (supplier_id, company_name, phone, contact_name, address, city, state, zip_code)
VALUES (1,
        'Company 1',
        '(754) 3235911',
        'Hillary Zielinski',
        '6189 Lukken Park',
        'Pompano Beach',
        'Florida',
        '19621'),
       (2,
        'Company 2',
        '(415) 1312973',
        'Horst Klaussen',
        '26502 Ridgeview Court',
        'San Francisco',
        'California',
        '24709'),
       (3,
        'Company 3',
        '(405) 2968708',
        'Torrey Meo',
        '6 Morrow Pass',
        'Oklahoma City',
        'Oklahoma',
        '65961'),
       (4,
        'Company 4',
        '(602) 4509086',
        'Fredi Nobbs',
        '9052 Dwight Point',
        'Phoenix',
        'Arizona',
        '25880'),
       (5,
        'Company 5',
        '(714) 1382979',
        'Britte Gabbat',
        '4288 Main Pass',
        'Garden Grove',
        'California',
        '75493'),
       (6,
        'Company 6',
        '(312) 9253409',
        'Edy Marjoribanks',
        '408 Elgar Alley',
        'Chicago',
        'Illinois',
        '99469'),
       (7,
        'Company 7',
        '(727) 4266166',
        'Trix Mallya',
        '98366 Meadow Valley Lane',
        'Clearwater',
        'Florida',
        '20016'),
       (8,
        'Company 8',
        '(858) 5594033',
        'Iolande Bengtsen',
        '93692 Quincy Point',
        'Oceanside',
        'California',
        '27993'),
       (9,
        'Company 9',
        '(205) 1895843',
        'Reena Artindale',
        '73 Reindahl Place',
        'Birmingham',
        'Alabama',
        '58202'),
       (10,
        'Company 10',
        '(313) 4063183',
        'Carolan Shaudfurth',
        '0 Swallow Pass',
        'Detroit',
        'Michigan',
        '88386');

CREATE TABLE Customer
(
    customer_id   int  NOT NULL,
    order_id      int  NOT NULL,
    first_name    text,
    last_name     text,
    phone         varchar(20),
    email         varchar(100),
    cust_password text NOT NULL,
    PRIMARY KEY (customer_id),
    CONSTRAINT cust_order_placed FOREIGN KEY (order_id) REFERENCES CustomerOrder (order_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO Customer (customer_id,
                      order_id,
                      first_name,
                      last_name,
                      email,
                      phone,
                      cust_password)
VALUES (1,
        3,
        'Nicol',
        'MacGettigen',
        'nmacgettigen0@123-reg.co.uk',
        '(378) 8947772',
        'N5S931zvgf'),
       (2,
        2,
        'Georgiana',
        'Pere',
        'gpere1@imdb.com',
        '(622) 8655743',
        'KfSCDuaaA5'),
       (3,
        10,
        'Valery',
        'Kleinfeld',
        'vkleinfeld2@rambler.ru',
        '(207) 2281203',
        'WhLRVrWlR'),
       (4,
        6,
        'Franz',
        'Hanner',
        'fhanner3@oakley.com',
        '(245) 4260903',
        'XqBMbF6Rl'),
       (5,
        9,
        'Hillary',
        'Dowglass',
        'hdowglass4@techcrunch.com',
        '(886) 3744430',
        '4exMt2NklKP'),
       (6,
        8,
        'Grover',
        'Raraty',
        'graraty5@ameblo.jp',
        '(360) 3325703',
        'ZWi3ecqUC8Wn'),
       (7,
        1,
        'Otho',
        'Snodin',
        'osnodin6@jigsy.com',
        '(641) 5643036',
        'tulHb2kJhC'),
       (8,
        5,
        'Victor',
        'Sollas',
        'vsollas7@123-reg.co.uk',
        '(832) 2238935',
        'mcYy22p'),
       (9,
        4,
        'Fernanda',
        'Wardingley',
        'fwardingley8@msn.com',
        '(265) 5528105',
        '0jZHw80e1'),
       (10,
        7,
        'Chen',
        'Caccavale',
        'ccaccavale9@live.com',
        '(371) 9333456',
        'vXfaUP');

CREATE TABLE FavoriteOrder
(
    customer_id int         NOT NULL,
    order_id    int         NOT NULL,
    name        varchar(24) NOT NULL,
    PRIMARY KEY (customer_id, order_id),
    CONSTRAINT assoc_customer FOREIGN KEY (customer_id) REFERENCES Customer (customer_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fav_assoc_order FOREIGN KEY (order_id) REFERENCES CustomerOrder (order_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO FavoriteOrder (customer_id, order_id, name)
VALUES (1, 1, 'at'),
       (2, 2, 'eros'),
       (3, 3, 'mus'),
       (4, 4, 'ut'),
       (5, 5, 'nec dui'),
       (6, 6, 'sapien dignissim'),
       (7, 7, 'habitasse'),
       (8, 8, 'sem'),
       (9, 9, 'vitae'),
       (10, 10, 'ante');

CREATE TABLE OrderLine
(
    order_line_id int         NOT NULL,
    order_id      int         NOT NULL,
    menu_item_id  varchar(16) NOT NULL,
    quantity      smallint    NOT NULL,
    PRIMARY KEY (order_line_id),
    CONSTRAINT ol_assoc_order FOREIGN KEY (order_id) REFERENCES CustomerOrder (order_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT ol_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO OrderLine (order_line_id, order_id, menu_item_id, quantity)
VALUES (1, 1, 'ra06KyWlJJGL', 606),
       (2, 1, 'e6GjCZMrcfnc', 92),
       (3, 1, 'qpRqN7qy202I', 618),
       (4, 4, 'lWrqsKKuWfLL', 622),
       (5, 4, 'kTBqySN3Soow', 52),
       (6, 6, 'mlT2zIBAWnFw', 669),
       (7, 7, 'nHXAWx6A8L5D', 374),
       (8, 6, '9Zjh8hUV8u3M', 400),
       (9, 9, 'kHBVJbV4bNQ0', 13),
       (10, 10, 'nkkJDDK2Nm1i', 915);

CREATE TABLE MenuItemDietaryRestriction
(
    menu_item_id           varchar(16) NOT NULL,
    dietary_restriction_id int         NOT NULL,
    PRIMARY KEY (menu_item_id, dietary_restriction_id),
    CONSTRAINT midr_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT midr_assoc_dietary_restriction FOREIGN KEY (dietary_restriction_id) REFERENCES DietaryRestriction (dietary_restriction_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO MenuItemDietaryRestriction (menu_item_id, dietary_restriction_id)
VALUES ('ra06KyWlJJGL', 1),
       ('e6GjCZMrcfnc', 2),
       ('qpRqN7qy202I', 3),
       ('lWrqsKKuWfLL', 4),
       ('kTBqySN3Soow', 5),
       ('mlT2zIBAWnFw', 6),
       ('nHXAWx6A8L5D', 7),
       ('9Zjh8hUV8u3M', 8),
       ('kHBVJbV4bNQ0', 9),
       ('nkkJDDK2Nm1i', 10);

CREATE TABLE MenuItemCategory
(
    menu_item_id varchar(16) NOT NULL,
    category_id  int         NOT NULL,
    PRIMARY KEY (menu_item_id, category_id),
    CONSTRAINT mic_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mic_assoc_category FOREIGN KEY (category_id) REFERENCES Category (category_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO MenuItemCategory (menu_item_id, category_id)
VALUES ('ra06KyWlJJGL', 1),
       ('e6GjCZMrcfnc', 2),
       ('qpRqN7qy202I', 3),
       ('lWrqsKKuWfLL', 4),
       ('kTBqySN3Soow', 5),
       ('mlT2zIBAWnFw', 6),
       ('nHXAWx6A8L5D', 7),
       ('9Zjh8hUV8u3M', 8),
       ('kHBVJbV4bNQ0', 9),
       ('nkkJDDK2Nm1i', 10);

CREATE TABLE MenuItemIngredient
(
    menu_item_id  varchar(16) NOT NULL,
    ingredient_id int         NOT NULL,
    PRIMARY KEY (menu_item_id, ingredient_id),
    CONSTRAINT mii_assoc_menu_item FOREIGN KEY (menu_item_id) REFERENCES MenuItem (menu_item_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mii_assoc_ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient (ingredient_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO MenuItemIngredient (menu_item_id, ingredient_id)
VALUES ('ra06KyWlJJGL', 1),
       ('e6GjCZMrcfnc', 2),
       ('qpRqN7qy202I', 3),
       ('lWrqsKKuWfLL', 4),
       ('kTBqySN3Soow', 5),
       ('mlT2zIBAWnFw', 6),
       ('nHXAWx6A8L5D', 7),
       ('9Zjh8hUV8u3M', 8),
       ('kHBVJbV4bNQ0', 9),
       ('nkkJDDK2Nm1i', 10);

CREATE TABLE IngredientOrder
(
    ingredient_order_id int NOT NULL,
    supplier_id         int NOT NULL,
    date_placed         datetime DEFAULT CURRENT_TIMESTAMP,
    date_received       datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (ingredient_order_id),
    CONSTRAINT io_assoc_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO IngredientOrder (ingredient_order_id, supplier_id, date_placed, date_received)
VALUES (1, 1, '2021-12-27 14:01:26', '2022-04-04 01:41:07'),
       (2, 2, '2021-12-06 06:16:22', '2022-04-08 05:45:29'),
       (3, 3, '2021-12-20 08:04:41', '2022-03-05 01:28:48'),
       (4, 4, '2021-12-13 05:32:07', '2022-02-28 15:42:06'),
       (5, 5, '2022-01-01 21:30:18', '2022-03-31 22:05:58'),
       (6, 6, '2022-01-05 06:07:03', '2022-04-05 20:28:19'),
       (7, 7, '2021-12-29 03:00:00', '2022-03-12 03:16:43'),
       (8, 8, '2022-01-20 12:41:31', '2022-02-12 13:39:05'),
       (9, 9, '2022-01-18 08:25:13', '2022-03-20 13:08:42'),
       (10, 10, '2022-01-05 03:29:53', '2022-03-28 03:43:45');

CREATE TABLE IngredientOrderLine
(
    ingredient_order_line_id int      NOT NULL,
    ingredient_id            int      NOT NULL,
    ingredient_order_id      int      NOT NULL,
    quantity                 smallint NOT NULL,
    PRIMARY KEY (ingredient_order_line_id),
    CONSTRAINT iol_assoc_ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient (ingredient_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT iol_assoc_ingredient_order FOREIGN KEY (ingredient_order_id) REFERENCES IngredientOrder (ingredient_order_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

INSERT INTO IngredientOrderLine (ingredient_order_line_id, ingredient_id, ingredient_order_id, quantity)
VALUES (1, 1, 1, 50),
       (2, 2, 1, 31),
       (3, 3, 1, 66),
       (4, 4, 4, 47),
       (5, 5, 4, 50),
       (6, 6, 6, 64),
       (7, 7, 7, 89),
       (8, 8, 6, 35),
       (9, 9, 9, 98),
       (10, 10, 10, 50);