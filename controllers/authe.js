// controllers/userController.js
import bcrypt from "bcrypt";
import User from "../models/User.js";

export const register = async (req, res) => {
  try {
    const { email, username, password } = req.body;

    const salt = await bcrypt.genSalt();
    const passwordHash = await bcrypt.hash(password, salt);

    const newUser = new User({
      username,
      password: passwordHash,
      email,
    });

    const savedUser = await newUser.save();
    res.status(201).json(savedUser); // 'something has been created'
  } catch (err) {
    res.status(500).json({ error: err.message }); // 'server error'
  }
};
