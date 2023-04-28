import React, { useState, useEffect } from 'react';

const ResourcePoolPage = () => {
  const [videos, setVideos] = useState([]);
  const [articles, setArticles] = useState([]);
  const [ideas, setIdeas] = useState([]);

  useEffect(() => {
    fetch('/api/videos')
      .then(res => res.json())
      .then(data => setVideos(data));

    fetch('/api/articles')
      .then(res => res.json())
      .then(data => setArticles(data));

    fetch('/api/ideas')
      .then(res => res.json())
      .then(data => setIdeas(data));
  }, []);

  return (
    <div>
      <h1>Resource Pool</h1>

      <h2>Videos</h2>
      <ul>
        {videos.map(video => (
          <li key={video.id}>
            <a href={video.url}>{video.title}</a>
          </li>
        ))}
      </ul>

      <h2>Articles</h2>
      <ul>
        {articles.map(article => (
          <li key={article.id}>
            <a href={article.url}>{article.title}</a>
          </li>
        ))}
      </ul>

      <h2>Ideas</h2>
      <ul>
        {ideas.map(idea => (
          <li key={idea.id}>
            {idea.text}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default ResourcePoolPage;
