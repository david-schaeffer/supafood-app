from flask import Blueprint, request, jsonify, make_response
import json
from src import db

customer = Blueprint('customer', __name__)

# add selected item to order 
@customer.route('add-item/<itemID>', methods=['POST'])
def add_item(itemID):
    cursor = db.get_db().cursor()
    name = request.form['name']
    description = request.form['description']
    calories = request.form['calories']
    unit_price = request.form['unit_price']
    query = f'''INSERT INTO 
            CustomerOrder (
                name, 
                description, 
                calories, 
                unit_price
            ) 
        VALUES 
            (
                \"{name}\", 
                \"{description}\",
                {calories}, 
                {unit_price}
            );
    '''
    cursor.execute(query)
    db.get_db().commit()

# Get the cart/current order for the customer with id <userID>
@customer.route('/<userID>/cart', methods=['GET'])
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

# Get all menu items
@customer.route('/menu', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select name, description, unit_price from MenuItem')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
