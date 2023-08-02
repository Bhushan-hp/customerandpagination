const Sequelize = require('sequelize')

const sequelize = new Sequelize('customersdata', 'root', '', { host: 'localhost', dialect: 'mysql' })

sequelize.authenticate().then(() => {
    console.log("Connected to DB")
}).catch(err => {
    console.log('unable to connect with DB', err)
})

const db = {};
db.sequelize = sequelize;
db.Sequelize = Sequelize
db.users = require('./users.model')(sequelize, Sequelize);

module.exports = db;