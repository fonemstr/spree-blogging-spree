Spree::Core::Engine.routes.draw do 
  get 'blog/tag/:blog_tag', to: 'blog_entries#tag', as: :tag
  get 'blog/:year/:month/:day/:slug', to: 'blog_entries#show', as: :entry_permalink
  get 'blog/:year(/:month)(/:day)', to: 'blog_entries#archive', 
  constraints: {:year => /(19|20)\d{2}/, :month => /[01]?\d/, :day => /[0-3]?\d/}, as: :news_archive

  resources :blog_entries
  
  namespace :admin do
    resources :blog_entries
  end 
end