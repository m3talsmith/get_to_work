ActionController::Routing::Routes.draw do |map|
  map.devise_for :persons,
    :path_names => {:sign_in => "login", :sign_out => "logout"}
  
  # -- Normal Person Mapping --
    map.resources :persons,
      :path_names => {:new => "register"},
      :member => {:dashboard => :get}
  # -- #
  
  map.root :controller => 'pages'
end
