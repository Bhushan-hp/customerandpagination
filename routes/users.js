var express = require('express');
var router = express.Router();
const controller = require('../controllers/users.controllers')

router.post('/getall', controller.fetchCustomers)
router.get('/findbyID/:id', controller.GetUserByID)
router.get('/SortwiseCity', controller.customerCountByCityWise)
router.post('/createcustomer', controller.CreateCustomer);

module.exports = router;