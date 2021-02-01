import React from 'react';
import './GalleryItem.css';
import {useState} from 'react';

function GalleryItem({ image, updateLikes }) {
    const [hovered, setHovered] = useState(false);

    const toggleHover = () => {
        setHovered(!hovered);
    }

    const determineLIkes = (likes) => {
        if (likes === 0 ) {
            return <em >No one has like this yet...</em>;
        }
        else if (likes === 1) {
            return <em >One person likes this!</em>;
        }
        else if (likes > 1) {
            return <em >{likes} people like this!</em>;
        }
    }

    return (
        <div className="card text-white bg-primary mb-3">
            <div className="card-header">{image.title}</div>
            <div className="card-body cardBody" onMouseEnter={toggleHover} onMouseLeave={toggleHover}>
                <h4 className="card-title"></h4>
                <img src={image.path} alt={"A photo from the year " + image.year} height="300 px" width="300 px"
                className={hovered ? 'hovered' : ''} 
                /><br />
                <div className={hovered ? 'middle showInfo' : 'middle'} ><div className="picDescription">{image.description}</div><i className="fas fa-thumbs-up" onClick={() => updateLikes(image, 1)}></i></div>
                <div className="year">{image.year}</div>
            </div>
            <div className="card-footer">
                {determineLIkes(image.likes)}
            </div>
        </div>
    );
}

export default GalleryItem;


