Thecolbyecho::Application.routes.draw do

  resources :ledes
  resources :people
  resources :photos
  resources :departments
  resources :articles
  resources :issues

  get 'news'     => 'departments#show', :slug => 'news'
  get 'local'    => 'departments#show', :slug => 'local'
  get 'opinion'  => 'departments#show', :slug => 'opinion'
  get 'ae'       => 'departments#show', :slug => 'ae'
  get 'features' => 'departments#show', :slug => 'features'
  get 'sports'   => 'departments#show', :slug => 'sports'
  get 'videos'   => 'departments#show', :slug => 'videos'
  get 'blog'     => 'departments#show', :slug => 'blog'
  get 'about'    => 'departments#show', :slug => 'about'

  root :to => 'frontpage#index'
end
