const Sequelize = require("sequelize");
const db = require("../config/db");

const potosmodel = db.define(
    "potos",
    {
        idfoods: {type: Sequelize.STRING},
        path: {type: Sequelize.STRING}
    }
);

module.exports = potosmodel;