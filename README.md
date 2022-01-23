Website with CRUD functionality implemented

Resources (all RESTful routes available): 

<ul>
  <li>Articles;</li>
  <li>Categories;</li>
  <li>Users.</li>
</ul>


Associations:

<ul>
  <li>One-to-many between users and articles;</li>
  <li>Many-to-many beteeen articles and categories.</li>
</ul>


Authentication: based on logged in/logged out state;

Security: admin user functionality and access level;


Dependencies:

<ul>
  <li>Bootstrap 5.1 (Popper and Webpacker also required)</li>
  <li>PostgreSQL (app is Heroku hosted, required for productino environment)</li>
</ul>

App based on Rails 6 and ruby 2.7.4.1.


Hosted by heroku -> https://zeferino.herokuapp.com/

