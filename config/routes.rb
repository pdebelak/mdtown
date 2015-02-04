Rails.application.routes.draw do
  devise_for :users
  mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)
  
  root 'static_pages#home'
end
