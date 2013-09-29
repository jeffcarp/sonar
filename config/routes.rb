Thecolbyecho::Application.routes.draw do

  resources :ledes
  resources :people
  resources :photos
  resources :departments
  resources :articles
  resources :issues

  Department.all.each do |dept|
    get dept.slug => 'departments#show', :slug => dept.slug 
    get dept.slug+'/:slug' => 'articles#show', department: dept.slug 
  end

  # TODO: change when sessions are hooked up
  get 'logout'   => 'frontpage#index', :slug => 'logout'

  root :to => 'frontpage#index'
end
