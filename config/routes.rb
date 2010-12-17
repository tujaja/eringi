ActionController::Routing::Routes.draw do |map|
  map.index '/', :controller => 'downloads', :action => 'index'

  map.resources :downloads, :member => {:dl => :get}

  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
