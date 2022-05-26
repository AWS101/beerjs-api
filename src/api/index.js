const express = require('express');

const emojis = require('./emojis');
const beers = require('./beers');

const router = express.Router();

router.get('/', (req, res) => {
  res.json({
    message: 'API - 👋🌎🌍🌏'
  });
});

router.use('/emojis', emojis);
router.use('/beers', beers);

module.exports = router;
