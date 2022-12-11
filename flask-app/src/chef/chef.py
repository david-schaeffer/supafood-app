from flask import Blueprint, request, jsonify, make_response
import json
from src import db


chef = Blueprint('chef', __name__)

# View the queue of orders to complete
@chef.route('/queue', methods=['GET'])
def get_admin():
    cursor = db.get_db().cursor()
    cursor.execute('''
        select quantity as Quantity, menu_item_id as Item 
        from OrderLine
        where order_line_id in (
            select order_line_id
            from OrderLine
            where order_id in (1, 2, 3)
        )
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
@chef.route('/update-order', methods=['POST'])
def get_customer(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from customers where customerNumber = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

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

@chef.route('/menu-items', methods=['GET'])
def get_menu_items():
    cursor = db.get_db().cursor()
    cursor.execute(
    '''
        select * from MenuItem
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

@chef.route('/menu-items', methods=['POST'])
def add_menu_item():
    name = request.form
    return f'<h1>Menu item: {name}.</h1>'