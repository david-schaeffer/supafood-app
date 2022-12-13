from flask import Blueprint, request, jsonify, make_response
import json
from src import db

chef = Blueprint('chef', __name__)

@chef.route('/ingredients', methods=['GET'])
def get_ingredients():
    cursor = db.get_db().cursor()
    cursor.execute('select name as label, ingredient_id as value from Ingredient order by name')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@chef.route('/add-menu-item', methods=['POST'])
def add_menu_item():
    # Add the new item to the MenuItem relation
    cursor = db.get_db().cursor()
    name = request.form['name']
    description = request.form['description']
    calories = request.form['calories']
    unit_price = request.form['unit_price']
    active = request.form['active']
    query = f'''INSERT INTO 
            MenuItem (
                name, 
                description, 
                calories, 
                unit_price, 
                active
            ) 
        VALUES 
            (
                \"{name}\", 
                \"{description}\",
                {calories}, 
                {unit_price}, 
                {active}
            );
    '''
    cursor.execute(query)
    db.get_db().commit()

    # Return the menu_item_id of the most recently added MenuItem
    # so Categories and Ingredients can be properly updated 
    query = f'''
        SELECT DISTINCT LAST_INSERT_ID()
        FROM MenuItem
    '''
    cursor.execute(query)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@chef.route('/add-menu-item-category/<menu_item_id>/<category_id>', methods = ['POST'])
def add_menu_item_category(menu_item_id, category_id):
    cursor = db.get_db().cursor()
    query = f'''INSERT INTO 
            MenuItemCategory (
                menu_item_id, 
                category_id
            ) 
        VALUES 
            (
                {menu_item_id},
                {category_id}
            );
    '''
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully added menu item category!"

@chef.route('/add-menu-item-ingredient/<menu_item_id>/<ingredient_id>', methods = ['POST'])
def add_menu_item_ingredient(menu_item_id, ingredient_id):
    cursor = db.get_db().cursor()
    query = f'''INSERT INTO 
            MenuItemIngredient (
                menu_item_id, 
                ingredient_id
            ) 
        VALUES 
            (
                {menu_item_id},
                {ingredient_id}
            );
    '''
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully added menu item ingredient!"

# View the queue of orders to complete
@chef.route('/queue/<index>', methods=['GET'])
def get_queue(index):
    cursor = db.get_db().cursor()
    cursor.execute(f'''
        SELECT MI.name as Item, OL.quantity as Qty
        FROM OrderLine OL
            JOIN CustomerOrder CO on OL.order_id = CO.order_id
            JOIN MenuItem MI on OL.menu_item_id = MI.menu_item_id
        WHERE CO.queue_order = (SELECT MIN(queue_order)
                                FROM (SELECT *
                                      FROM CustomerOrder
                                      WHERE order_status <> 'completed'
                                      LIMIT {index}, 1) as IncompleteOrders);
    ''')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Update the status of an order
@chef.route('/queue/<index>', methods=['POST'])
def complete_order(index):
    cursor = db.get_db().cursor()
    query = (f'''
        UPDATE CustomerOrder
        SET order_status = 'completed'
        WHERE queue_order = (SELECT MIN(queue_order)
                             FROM (SELECT *
                                   FROM CustomerOrder
                                   WHERE order_status <> 'completed'
                                   LIMIT {index}, 1) as IncompleteOrders);
    ''')
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully completed order!"