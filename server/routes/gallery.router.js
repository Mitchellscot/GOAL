const express = require('express');
const router = express.Router();
const galleryItems = require('../modules/gallery.data');
const pool = require('../modules/pool');



// PUT Route
router.put('/like/:id', (req, res) => {
    let newLike = req.body;
    console.log(newLike.likes);
    let id = req.params.id;
    const query = `UPDATE "images" SET "likes"='${newLike.likes}' WHERE"id"=$1;`;
    console.log(`Updating image ${id} with `, newLike);
    pool.query(query, [id])
    .then((result) =>{
      res.sendStatus(200);
    }).catch((err) => {
      console.log(`HEY MITCH - Error making update: ${query}`, err);
      res.sendStatus(500);
    });
});

// GET Route
router.get('/', (req, res) => {
    let queryText = 'SELECT * FROM "images" ORDER BY "year" ASC;';
    pool.query(queryText).then(result => {
        res.send(result.rows);
      })
      .catch(error => {
        console.log('HEY MITCH - Error getting images', error);
        res.sendStatus(500);
      });
});

module.exports = router;