import React from 'react';
import './GalleryItem.css';

function GalleryItem({ image, likes, setLikes }) {

    return (
        <>
            <img src={image.path} alt={"A photo from the year " + image.year} height="200 px" width="200 px" />
        </>
    );
}

export default GalleryItem;


