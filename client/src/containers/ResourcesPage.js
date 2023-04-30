import './../App.css';
import React, { Component } from 'react';

class ResourcesPage extends Component {
  render() {
    return (
      <div>
        <p>Here are some resources you can use to learn about agriculture:</p>
        <div className="youtube-cards">
          <div className="youtube-card">
          <iframe width="560" height="315" src="https://www.youtube.com/embed/oczNc0gbXrY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>            <p>A video streaming platform featuring videos about farming and agriculture.</p>
          </div>
          <div className="youtube-card">
          <iframe width="560" height="315" src="https://www.youtube.com/embed/oczNc0gbXrY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>            <p>A video streaming platform featuring videos about farming and agriculture.</p>
          </div>
          <div className="youtube-card">
          <iframe width="560" height="315" src="https://www.youtube.com/embed/oczNc0gbXrY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>            <p>A video streaming platform featuring videos about farming and agriculture.</p>
          </div>
        </div>
      </div>
    );
  }
}

export default ResourcesPage;
