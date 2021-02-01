import React from 'react';
import './UploadForm.css';

function UploadForm({ newImageDescription, setNewImageDescription, newImageName, setNewImageName, newImageYear, setNewImageYear, newImageURL, setNewImageURL, addImage }) {

    return (
        <div id="uploadForm" className="card text-white bg-secondary mb-3">
            <div className="card-header">Upload Your Own!</div>
            <div className="card-body form-body"></div>
            <form onSubmit={addImage}>
                <div class="form-group ">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Title</span>
                        <input value={newImageName} onChange={(event) => { setNewImageName(event.target.value) }} required type="text" class="form-control" placeholder="My awesome picture"/>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Text</span>
                        <input value={newImageDescription} onChange={(event) => { setNewImageDescription(event.target.value) }} required type="text" class="form-control" placeholder="Me on the beach"/>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Year</span>
                        <input value={newImageYear} onChange={(event) => { setNewImageYear(event.target.value) }} type="text" class="form-control" placeholder="2021"/>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">URL</span>
                        <input value={newImageURL} onChange={(event) => { setNewImageURL(event.target.value) }} type="text" class="form-control" placeholder="https://www.imgbb.com" />
                    </div>
                    <button type="submit" class="btn btn-primary">Submit!</button>
                    </div>
                </form>
            <div className="card-footer">
                <em>No inappropriate photos!</em>
            </div>
        </div>
    );
}

export default UploadForm;
