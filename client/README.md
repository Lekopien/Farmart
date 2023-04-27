# README

### The App
Platform connecting farmers with people, where farmers can add their products online and people can add them to their basket.
You can signin/signup as a farmer or as a customer. Built with RESTful API architecture and CRUD functionalities. 

![Alt Text](https://media.giphy.com/media/RrU8f9lImvJja/giphy.gif)


### Motivations
Build a fullstack app that uses Ruby for the backend with PostgreSQL and React for the frontend.  

### Demo
[Here!](https://www.youtube.com/watch?v=QzSKVSNKPkY&t=8s) 

### Technical details
- Front-end built with **React** and **React Router**.
- Styling with pure **CSS** and **MDBootstrap**.
- **PostgreSQL** database.
- Authentication with **JWT**.
- Developed a **Ruby on Rails** API backend with 5 different endpoints: for users, farmers, customers, products and categories.
- Used **serializer** to format the JSON file.

### Installation
Fork and clone the project https://github.com/manonja/farms-to-people-frontend
Fork and clone the project https://github.com/manonja/farms-to-people-server

In your terminal, go to `farms-to-people-server`
- run `rails db:create`
- `rails db:migrate`
- `rails db:seed`
- `rails s`

The server will start on http://localhost:3001

Then go to `farms-to-people-frontend`
- run `npm install`
- `npm start`

The app will run on http://localhost:3000

### How to use?
If you are a new user, signup (as a farmer or as a customer), otherwise, login into your account. 

If you are a farmer, you can see the current product you have on sale. You can add as many products as you want, and delete them. 

If you are a customer, you can see all the products farmers have on sale, select different categories, and add products to you basket. You can see your basket and delete products as well. Clicking on checkout won't do anything for now. 


### Author
Manon Jacquin (https://github.com/manonja)
