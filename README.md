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
root 'static_pages#home'

Rails.application.routes.draw do
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'


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
  <%= link_to "About", about_path %>
</a>

<a>
  <%= link_to "Contact", contact_path %>
</a>

<a>
  <%= link_to "Help", help_path %>
</a>
```

```
10046  rails new sample_app
10047  rails new sample_app_101
10048  ls
10049  cd sample_app_101
10050  atom .
10051  ruby -v
10052  rvm install 2.4.4
10053  bundle install
10054  atom .
10055  ruby -v
10056  bundle install
10057  atom .
10058  bundle insatll
10059  bundle install
10060  rails s
10061  git init
10062  git add .
10063  git commit -m "initial commit"
10064  atom .
10065  git remote add origin https://github.com/xiaoweiruby/sample_app_102.git
10066  git push -u origin master
10067  git checkout -b static-pages
10068  rails generate controller StaticPages
10069  touch app/views/static_pages/home.html.erb
10070  touch app/views/static_pages/help.html.erb
10071  touch app/views/static_pages/about.html.erb
10072  touch app/views/static_pages/contact.html.erb
10073  atom .
10074  git add .
10075  git commit -m "Add StaticPagesController action"
10076  rails s
10077  git add .
10078  git commit -m "Add views StaticPages home help contact about html.erb"
10079  git add .
10080  git commit -m "Add application title & Edit about contact help home"
10081  rails s
10082  rake routes
10083  rails s
10084  git add .
10085  git commit -m "Add link_to Home.html.erb"
10086  git push
10087  git push origin static-pages
```
