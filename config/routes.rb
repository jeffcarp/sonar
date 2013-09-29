Thecolbyecho::Application.routes.draw do

  resources :ledes
  resources :people
  resources :photos
  resources :departments
  resources :articles
  resources :issues do 
    resources :articles
  end

  Department.all.each do |dept|
    get dept.slug => 'departments#show', :slug => dept.slug 
    get dept.slug+'/:slug' => 'articles#show', department: dept.slug 
  end

  # TODO: change when sessions are hooked up
  get 'sonar' => 'sessions#create', :slug => 'sonar'
  get 'logout'   => 'sessions#destroy', :slug => 'logout'


  root :to => 'frontpage#index'
end
