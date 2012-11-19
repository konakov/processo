DummyApp::Application.routes.draw do
  resources :operations

  resources :processes

  resources :people

  resources :organizations

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
  root :to => "rails_admin::Main#dashboard"

  # https://github.com/sferik/rails_admin/issues/362
  match ':controller(/:action(/:id(.:format)))'
end
