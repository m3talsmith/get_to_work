ActionController::Routing::Routes.draw do |map|
  map.devise_for :persons
  
  map.root :controller => 'pages'
end
