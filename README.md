https://github.com/banister/sample_app/

```
10014  cd rubyspace
10015  ls
10016  rails new sample_app
10017  ls
10018  cd sample_app
10019  bundle install
10020  rails s
10020  git init
10020  git add .
10020  git commit -m "initial commit"

10021  git checkout -b static-pages
10022  rails generate controller StaticPages
10023  atom .
10024  touch app/views/static_pages/home.html.erb
10025  touch app/views/static_pages/help.html.erb
10026  touch app/views/static_pages/about.html.erb
10027  rails s
10028  rake routes
10029  rails s
10030  git add .
10031  git commit -m "add about root"
10032  rails s
```

```
Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  root 'static_pages#home'
end
```

```
app/controllers/static_pages_controller.rb

class StaticPagesController < ApplicationController

def home
end

def help
end

def about
end

end

```


app/views/static_pages/about.html.erb
```
<h1>About Us</h1>
<p>
  The <a href="http://railstutorial.org">Ruby on Rails Tutorial</a>
  is a project to make a book and screncasts to teach web development with
  <a href="http://railstutorial.org">Ruby on Rails</a> This is the
  sample application for the tutorial.
</p>

```


app/views/static_pages/help.html.erb
```
<h1>Help</h1>

<p>
Get help on teh Ruby on Rails tutorial at the
<a href="http://railstutorial.org/help">Rails Tutorial help page</a>
To get help on this sample app, see
the <a href="http://railstutorial.org/book">Rails Tutorial book</a>
</p>

```


app/views/static_pages/home.html.erb
```
<h1>Sample App</h1>
<p>
  This is the home page for the
  <a href="http://railstutorial.org/">Ruby on Rails Tutorial</a>
  sample application.
</p>
```
app/views/static_pages/contact.html.erb
```
<h1>Contact</h1>
<p>
  Contact the Ruby on Rails Tutorial about the sample app at the
  <a href="http://railstutorial.org/">ontact page</a>
</p>
```
app/views/layouts/application.html.erb
```
<!DOCTYPE html>
<html>
  <head>
    <title><%= yield(:title) %> | Ruby on Rails Tutorial Sample App</title>
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <%= yield %>
  </body>
</html>

```

```
<% provide(:title, "Home") %>
```

如何在Rails中使用link_to

https://mixandgo.com/learn/how-to-use-link_to-in-rails

如何使用Rails link_to方法（包含示例）

https://www.rubyguides.com/2019/05/rails-link_to-method/

```
<a>
  <%= link_to "Home", root_path %>
</a>

<a>
  <%= link_to "Contact", root_path %>
</a>

<a>
  <%= link_to "About, root_path %>
</a>

<a>
  <%= link_to "Help", root_path %>
</a>
```
