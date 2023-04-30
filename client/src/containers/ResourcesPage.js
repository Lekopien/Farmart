import React, { Component } from 'react';
import './../App.css';

class ResourcesPage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      fact: ''
    };
    this.facts = [
      'There are over 570 million farms in the world.',
      'The world’s most valuable crop is corn.',
      'Agriculture is the world’s largest employer, providing jobs for more than 1.3 billion people.',
      'Farmed fish accounts for more than 50% of the fish consumed worldwide.',
      'Agriculture is responsible for around 14% of global greenhouse gas emissions.'
    ];
    this.getRandomFact = this.getRandomFact.bind(this);
  }

  getRandomFact() {
    const randomIndex = Math.floor(Math.random() * this.facts.length);
    const randomFact = this.facts[randomIndex];
    this.setState({ fact: randomFact });
  }

  render() {
    return (
      <div className="resources-container">
        <div className="resources-content">
          <p>Here are some resources you can use to learn about agriculture:</p>
          <div className="youtube-cards">
            <div className="youtube-card">
              <iframe width="560" height="315" src="https://www.youtube.com/embed/oczNc0gbXrY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>            
            </div>
            <div className="youtube-card">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/sRx-OJg0rVU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>              
            </div>
            <div className="youtube-card">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/iFwu2cfsnmc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>              
            </div>
            <div className="youtube-card">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/U1K_V5CL6vY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>            
            </div>
          </div>
          <div className="fact-generator">
            <p>Did you know?</p>
            <p>{this.state.fact}</p>
            <button onClick={this.getRandomFact}>Generate Random Fact</button>
          </div>
        </div>
      </div>
    );
  }
}

export default ResourcesPage;
