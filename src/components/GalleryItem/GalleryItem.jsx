import React from 'react';
import './GalleryItem.css';

function GalleryItem({ image, likes, setLikes }) {

    return (
        <div className="card text-white bg-primary mb-3">
            <div className="card-header">{image.title}</div>
            <div className="card-body cardBody">
                <h4 className="card-title"></h4>
                <img className="overlay" src={image.path} alt={"A photo from the year " + image.year} height="300 px" width="300 px" /><br />
                <button type="button" className="btn btn-primary btn-sm" >Like!</button>
            </div>
            <div className="card-footer">
                {likes > 0 ? <small >No one has like this yet...</small> : <small >{likes} people have liked this</small>}
            </div>
        </div>
    );
}

export default GalleryItem;


