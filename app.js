var express = require('express');
const db = require('./model/connection')
const dbb = require('./model/users.model')
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var usersRouter = require('./routes/users');
var app = express();
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
db.sequelize.sync({});
app.use('/customer', usersRouter);

module.exports = app;