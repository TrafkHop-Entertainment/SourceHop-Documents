const express = require('express');
const cors = require('cors');
const axios = require('axios');

const app = express();
app.use(cors());
app.use(express.json());

const PORT = 7860;

const GH_TOKEN = process.env.GH_TOKEN; 
const HF_TOKEN = process.env.HF_TOKEN; 
const GH_MODEL = "gpt-4o-mini";

app.post('/chat', async (req, res) => {
    try {
        const { messages } = req.body;
        const response = await axios.post("https://models.inference.ai.azure.com/chat/completions", {
            model: GH_MODEL,
            messages: messages,
            temperature: 0.6,
            max_tokens: 500
        }, {
            headers: {
                "Authorization": `Bearer ${GH_TOKEN}`,
                "Content-Type": "application/json"
            }
        });
        res.json(response.data);
    } catch (error) {
        console.error("Fehler Chat:", error.response?.data || error.message);
        res.status(500).json({ error: "Interner Server-Fehler beim Text-Proxy" });
    }
});

app.listen(PORT, () => {
    console.log(`Trafkhop Proxy läuft auf Port ${PORT}`);
});

//Copyright © 2026 TrafkHop Entertainment™
//All rights reserved.

//MADE WITH AI
