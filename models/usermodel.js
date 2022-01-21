const Sequelize = require("sequelize");
const db = require("../config/db");

const username = db.define(
    "users",
    {
        username: {type: Sequelize.STRING},
        password: {type: Sequelize.STRING},
        email: {type: Sequelize.STRING}
    }
);

module.exports = username;