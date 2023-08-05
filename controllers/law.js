import Law from "../models/Content.js";

export const addLaw = async (req, res) => {
  try {
    const { title, content, type, keyword } = req.body;

    const newLaw = new Law({
      title,
      content,
      type,
      keyword
    });

    const savedLaw = await newLaw.save();
    res.status(201).json(savedLaw);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};