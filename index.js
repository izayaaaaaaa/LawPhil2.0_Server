// app.js or index.js
import express from "express";
import mongoose from "mongoose";
import authe from "./routes/authe.js"; // Assuming you have a authe for handling user-related routes
import cors from 'cors';

const app = express();

// Allow requests from http://localhost:3001 (your frontend)
app.use(cors({
  origin: 'http://localhost:3001',
}));

app.use(express.json());
// Connect to MongoDB Atlas
mongoose.connect("mongodb+srv://a:a@cluster0.z2vzoef.mongodb.net/", {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
  .then(() => {
    console.log("Connected to MongoDB Atlas");
  })
  .catch((err) => {
    console.error("Error connecting to MongoDB Atlas:", err);
  });

// Use authe for handling user-related routes
app.use("/users", authe);

// Start the server
app.listen(4000, () => {
  console.log("Server started on http://localhost:4000");
});
