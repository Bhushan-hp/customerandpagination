const db = require('../model/connection')
const sequelize = db.sequelize;
const users = db.users
module.exports = {
    fetchCustomers: async(req, res) => {
        try {
            const { first_name, last_name, city, page, limit = 15 } = req.body;
            const whereClause = {};

            const pageNumber = page ? parseInt(page) : 1;

            if (first_name) whereClause.first_name = first_name;
            if (last_name) whereClause.last_name = last_name;
            if (city) whereClause.city = city;
            const offset = (pageNumber - 1) * limit;
            const { count, rows } = await users.findAndCountAll({
                where: whereClause,
                limit: parseInt(limit),
                offset: offset,
            });
            res.json({
                totalItems: count,
                totalPages: Math.ceil(count / limit),
                currentPage: parseInt(pageNumber),
                customers: rows,
            });
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },

    GetUserByID: async(req, res) => {
        try {
            const customerId = req.params.id;
            const customer = await users.findByPk(customerId);

            if (customer) {
                res.json(customer);
            } else {
                res.status(404).json({ message: 'Customer not found' });
            }
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },


    customerCountByCityWise: async(req, res) => {
        try {
            const citiesWithCounts = await users.findAll({
                attributes: ['city', [db.Sequelize.fn('COUNT', sequelize.col('city')), 'customer_count']],
                group: ['city'],
            });
            res.json(citiesWithCounts);
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },


    CreateCustomer: async(req, res) => {
        try {
            const { first_name, last_name, city, company } = req.body;
            if (!first_name || !last_name || !city || !company) {
                return res.status(400).json({ message: 'All fields are required' });
            }
            const existingCustomer = await users.findOne({
                where: { first_name: first_name, city: city, company: company }
            });
            if (existingCustomer) {
                res.status(400).json({ message: 'Customer with the same details already exists , Cannot be created new user.' });

            } else {
                const newCustomer = await users.create({
                    first_name,
                    last_name,
                    city,
                    company,
                });
                res.status(201).json(newCustomer);
            }
        } catch (error) {
            console.error(error);
            res.status(500).json({ error });
        }
    }
}