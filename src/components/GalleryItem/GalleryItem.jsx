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
            return <em id={image.id}>No one has liked this yet...</em>;
        }
        else if (likes === 1) {
            return <em id={image.id}>One person likes this!</em>;
        }
        else if (likes > 1) {
            return <em id={image.id}>{likes} people like this!</em>;
        }
    }

    return (
        <div className="card text-white bg-primary mb-3">
            <div className="card-header">{image.title}</div>
            <div className="card-body" onMouseEnter={toggleHover} onMouseLeave={toggleHover}>
                <h4 className="card-title"></h4>
                <img src={image.path} alt={"A photo from the year " + image.year} height="300 px" width="300 px"
                className={hovered ? 'hovered' : ''} 
                /><br />
                <div className={hovered ? 'middle showInfo' : 'middle'} ><div className="picDescription">{image.description}</div><i className="fas fa-thumbs-up" onClick={() => {
                    const element = document.getElementById(image.id);
                    console.log(element)
                    element.classList.add('blur');
                    console.log('blur added');
                    setTimeout(() => {
                        element.classList.remove('blur');
                    }, 1000);
                    updateLikes(image, 1)}}
                    ></i></div>
                <div className="year">{image.year}</div>
            </div>
            <div className="card-footer">
                {determineLIkes(image.likes)}
            </div>
        </div>
    );
}

export default GalleryItem;