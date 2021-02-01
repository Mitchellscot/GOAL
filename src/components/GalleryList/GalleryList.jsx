import React from 'react';
import './GalleryList.css';
import GalleryItem from '../GalleryItem/GalleryItem.jsx';

function GalleryList({ images, updateLikes}) {

    return (

        <div className="card-deck">
            <>
                {images.map(image =>
                (<div key={image.id}>
                    <GalleryItem
                        image={image}
                        updateLikes={updateLikes} 
                        />
                </div>
                )
                )}
            </>
        </div >
    );
}

export default GalleryList;

