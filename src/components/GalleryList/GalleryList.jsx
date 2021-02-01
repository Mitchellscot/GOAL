import React from 'react';
import './GalleryList.css';
import GalleryItem from '../GalleryItem/GalleryItem.jsx';
import UploadForm from '../UploadForm/UploadForm'

function GalleryList({ images, updateLikes, newImageDescription, setNewImageDescription, newImageName, setNewImageName, newImageYear, setNewImageYear, newImageURL, setNewImageURL, addImage, deleteImage }) {

    return (

        <div className="card-deck col d-flex justify-content-center">
            <>
                {images.map(image =>
                (<div key={image.id}>
                    <GalleryItem
                        image={image}
                        updateLikes={updateLikes}
                        deleteImage={deleteImage}
                    />
                </div>
                )
                )}
                <UploadForm
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
            </>
        </div >
    );
}

export default GalleryList;

