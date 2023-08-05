import mongoose from "mongoose";

const lawSchema = new mongoose.Schema({
    title: {type: String, required: true},
    content: {type: String, required: true},
    type: {type: String, required: true},
    keyword: {type: String, required: true}
});

const Law = mongoose.model("Law", lawSchema);

export default Law;