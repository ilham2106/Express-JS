const Sequelize = require("sequelize");
const db = require("../config/db");

const foodsmodel = db.define(
    "mahasiswa2",
    {
        npm: {type: Sequelize.STRING},
        namamahasiswa: {type: Sequelize.STRING},
        prodi: {type: Sequelize.STRING}
    }
);

module.exports = foodsmodel;