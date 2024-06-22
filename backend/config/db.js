// config/db.js
const mongoose = require('mongoose');
const uri = 'mongodb+srv://shashwatsaxena:j3ZKOdHn3NFmlyJz@cluster0.9hfinnu.mongodb.net/';

const connectDB = async () => {
    try {
        await mongoose.connect(uri, {
            useNewUrlParser: true,
            useUnifiedTopology: true,
            useCreateIndex: true,
        });
        console.log('Connected to MongoDB Atlas');
    } catch (err) {
        console.error('Error connecting to MongoDB Atlas:', err.message);
        process.exit(1);
    }
};

module.exports = connectDB;
