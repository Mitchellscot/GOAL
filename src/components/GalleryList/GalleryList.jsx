import React from 'react';
import './GalleryList.css';
import GalleryItem from '../GalleryItem/GalleryItem.jsx';

function GalleryList({ images, likes, setLikes }) {

    return (

        <ul className="imageList">
            <>
                {images.map(image =>
                (<li key={image.id}>
                    {setLikes(image.likes)}
                    <GalleryItem
                        image={image}
                        likes={likes}
                        setLikes={setLikes} />
                </li>
                )
                )}
            </>
        </ul>
    );
}

export default GalleryList;

