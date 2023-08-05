import express from 'express';
import { addLaw } from '../controllers/law.js';

const router = express.Router();

router.post('/addLaw', addLaw);

export default router;