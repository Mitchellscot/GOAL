import React from 'react';
import { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';
import GalleryList from '../GalleryList/GalleryList';


// import GalleryItem from '../GalleryItem/GalleryItem';

function App() {

  //default value probably doesn't work...
  const [images, setImages] = useState([]);
  const [newImageName, setNewImageName] = useState('');
  const [newImageDescription, setNewImageDescription] = useState('');
  const [newImageYear, setNewImageYear] = useState('');
  const [newImageURL, setNewImageURL] = useState('');

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

  const updateLikes = (image, num) => {
    const updatedLikes = image.likes + num;
    const id = image.id
    console.log(`updating image with ID of ${id} with this many likes: ${updatedLikes}`)
    axios.put(`/gallery/like/${id}`, { likes: updatedLikes }).then((response) => {
      getImages();
    }).catch((error) => { console.log(`HEY MITCH - YOU GOT AN ERROR! ${error}`) })
  }

  //POSTS request
  const addImage = (event) => {
    event.preventDefault();
    axios({
      method: 'POST',
      url: '/gallery',
      data: {
        title: newImageName,
        description: newImageDescription,
        year: newImageYear,
        path: newImageURL
      }
    }).then((response) => {
      getImages();
      setNewImageName('');
      setNewImageDescription('');
      setNewImageYear('');
      setNewImageURL('');
    })
  }
  return (
    <div className="App">
      <header className="App-header">
        <h1 className="App-title">Mitchell Scott - EVERY year of his LIFE!</h1>
      </header>
      <div className="container">
        <GalleryList
          images={images}
          updateLikes={updateLikes}
          newImageDescription={newImageDescription}
          setNewImageDescription={setNewImageDescription}
          newImageName={newImageName}
          setNewImageName={setNewImageName}
          newImageYear={newImageYear}
          setNewImageYear={setNewImageYear}
          newImageURL={newImageURL}
          setNewImageURL={setNewImageURL}
          addImage={addImage}
        />
      </div>
    </div>
  );
}

export default App;
