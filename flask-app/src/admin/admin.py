from flask import Blueprint, request, jsonify, make_response
import json
from src import db


admin = Blueprint('admin', __name__)

# Get all ingredient inventory the DB
@admin.route('/inventory', methods=['GET'])
def get_inventory():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Ingredient')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Access supplier list and past orders
@admin.route('/supplier-orders', methods=['GET'])
def get_suppliers(userID):
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

# Place an order for low-stock ingredients
@admin.route('/place-order', methods=['GET'])
def place_ingredient_order():
    cursor = db.get_db().cursor()
    cursor.execute(
        ''
    )