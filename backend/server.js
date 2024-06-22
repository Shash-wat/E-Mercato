// server.js
const express = require('express');
const connectDB = require('./config/db');
const productRouter = require('./routes/products');

const app = express();

// Connect to MongoDB Atlas
connectDB();

// Middleware
app.use(express.json());

// Routes
app.use('/products', productRouter);

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
