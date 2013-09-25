Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :blog_entries
  end
  
  resources :blog_entries

  get 'blog/tag/:tag', :to => 'blog_entries#tag' #, :as => :tag
  get 'blog/:year/:month/:day/:slug', :to => 'blog_entries#show' #, :as => :blog_entry_permalink
  get 'blog/:year(/:month)(/:day)', :to => 'blog_entries#archive', :constraints => {:year => /(19|20)\d{2}/, :month => /[01]?\d/, :day => /[0-3]?\d/}
end