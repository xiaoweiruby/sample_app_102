Rails.application.routes.draw do
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'



end
