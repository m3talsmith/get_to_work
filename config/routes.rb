ActionController::Routing::Routes.draw do |map|
  map.devise_for :persons
  
  # -- Normal Person Mapping --
    map.resources :persons,
      :path_names => {:new => "register"},
      :member => {:dashboard => :get}
  # -- #
  
  map.root :controller => 'pages'
end
