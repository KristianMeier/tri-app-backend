const winston = require("winston");
const mongoose = require("mongoose");

module.exports = function () {
  const db =
    "mongodb+srv://vidlyuser:1234@cluster0.3n5wy.mongodb.net/?retryWrites=true&w=majority";
  mongoose.connect(db).then(() => winston.info(`Connected to ${db}...`));
};
