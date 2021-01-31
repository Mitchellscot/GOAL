import React from 'react';
import './GalleryItem.css';
import {useState} from 'react';

function GalleryItem({ image }) {
    const [hovered, setHovered] = useState(false);
    const [likes, setLikes] = useState(0);
    const toggleHover = () => {
        setHovered(!hovered);
    }

    const updateLikes = () => {
        setLikes(likes + 1);
    }

    return (
        <div className="card text-white bg-primary mb-3">
            <div className="card-header">{image.title}</div>
            <div className="card-body cardBody" onMouseEnter={toggleHover} onMouseLeave={toggleHover}>
                <h4 className="card-title"></h4>
                <img src={image.path} alt={"A photo from the year " + image.year} height="300 px" width="300 px"
                className={hovered ? 'hovered' : ''} 
                /><br />
                <div className={hovered ? 'middle showInfo' : 'middle'} ><div className="picDescription">{image.description}</div><i className="fas fa-thumbs-up" onClick={() => updateLikes()}></i></div>
                <div className="year">{image.year}</div>
            </div>
            <div className="card-footer">
                {likes < 1 ? <small >No one has like this yet...</small> : <small >{likes} people have liked this</small>}
            </div>
        </div>
    );
}

export default GalleryItem;


