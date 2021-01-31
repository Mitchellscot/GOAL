// import React from 'react';
import { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';
import GalleryList from '../GalleryList/GalleryList';
// import GalleryItem from '../GalleryItem/GalleryItem';

function App() {

    //default value probably doesn't work...
    const [images, setImages] = useState([]);
    const [likes, setLikes] = useState(0);

  useEffect(() => {
    getImages();
  }, []);

    const getImages = () => {
      axios.get('/gallery').then((response) => {
        setImages(response.data);
      }).catch((error) => {
        console.log('HEY MITCH! - Error getting images!', error);
      });
    }

    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Mitchell Scott - EVERY year of his LIFE!</h1>
        </header>
        <div className="container">
        <GalleryList 
        images={images}
        setLikes={setLikes}
        likes={likes}
        />
        </div>
      </div>
    );
}

export default App;
