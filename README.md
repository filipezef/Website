# README

<p>Website with CRUD functionality implemented.</p>

Resources (all RESTful routes available): 

<ul>
  <li>Articles</li>
  <li>Categories</li>
  <li>Users</li>
</ul>

Associations

One-to-many between users and articles
Many-to-many beteeen articles and categories

Authentication

Based on logged in/logged out state

Security

Admin user functionality and access level

App based on Rails 6 and ruby 2.7.4.1.

Dependencies:

<ul>
  <li>Bootstrap 5.1 (Popper and Webpacker also required)</li>
  <li>PostgreSQL (app is Heroku hosted, required for productino environment)</li>
</ul>

Hosted by heroku -> https://zeferino.herokuapp.com/

