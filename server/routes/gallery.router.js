const express = require('express');
const router = express.Router();
const galleryItems = require('../modules/gallery.data');
const pool = require('../modules/pool');

//DELETE
router.delete('/:id',  (req, res) => {
    let id = req.params.id;
    console.log('DELETING THIS PHOTO', id);
    const query = 'DELETE FROM "images" WHERE id=$1;';
    pool.query(query, [id]).
    then((result) => {
      res.sendStatus(204);
    }).catch((err) => {
    console.log(`error making the request: ${query}`);
    res.sendStatus(500);
    })
  });

//POST Route
router.post('/', (req, res) =>{
    const newImage = req.body;
    console.log('Adding a photo!', newImage);
    const query = `INSERT INTO "images" ("title", "description", "year", "path", "likes") VALUES ($1, $2, $3, $4, '0');`;
    pool.query(query, [newImage.title, newImage.description, newImage.year, newImage.path]).then((result) =>{
        res.sendStatus(201);
    }).catch((error)=> {
        console.log(`HEY MITCH - COULDN'T ADD THE IMAGE! ${error}`);
        res.sendStatus(500);
    });
})

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
    let queryText = 'SELECT * FROM "images" ORDER BY "id" ASC;';
    pool.query(queryText).then(result => {
        res.send(result.rows);
      })
      .catch(error => {
        console.log('HEY MITCH - Error getting images', error);
        res.sendStatus(500);
      });
});

module.exports = router;