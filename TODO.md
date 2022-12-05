# TODO

## Phase 3 necessities:

### Flask app:

- DB bootstrap file
    - update sample data to have sufficient # of tuples and more accurate examples
- Routes for Phase 2 wireframes + other routes (total > 8)
    | Screen | Request type | Persona | Routes |
    |--------|--------------|---------|--------|
    | View cart/current order | GET  | Customer | /cust/\<userID>/cart
    | View menu (+ favorites) | GET  | Customer | /cust/menu |
    | Place current order     | POST | Customer | /cust/checkout
    | View order queue        | GET  | Chef | /chef/queue
    | Updating order status   | POST | Chef | /chef/update-order
    | Add new menu items      | POST | Chef | /chef/add-item
    | View inventory/ingredients in stock | GET | Manager | /admin/inventory
    | Access supplier list and past orders | GET | Manager | /admin/supplier-orders
    | Place ingredient order  | POST | Manager | /admin/place-order
    
- Remove all unnecessary routes 

### AppSmith app:
- 4+ pages (screens) that connect to Flask API
- At least one page must insert/update data in the DB
    - this can be adding menu items?
- Remainder can be simple data views using GET requests

## Final deliverables:
- 3-5 minute video pitch of the product, including an AppSmith demo
    - brief intro of team
    - application "elevator pitch"
    - review of created routes
    - demo of AppSmith screens (show that data is updating in DB for POST screen)
- GitHub repo w/ all necessary code and infrastructure; include top-level updated README.md 
- UI implemented in AppSmith server