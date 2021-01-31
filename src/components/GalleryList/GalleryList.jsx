import React from 'react';
import './GalleryList.css';
import GalleryItem from '../GalleryItem/GalleryItem.jsx';

function GalleryList({ images}) {

    return (

        <div className="card-deck">
            <>
                {images.map(image =>
                (<div key={image.id}>
                    <GalleryItem
                        image={image} />
                </div>
                )
                )}
            </>
        </div >
    );
}

export default GalleryList;

