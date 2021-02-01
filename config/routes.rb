# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :administrators, :controllers => {
    :sessions => 'administrators/sessions'   
  } 
  devise_scope :administrator do
    get "sign_in", :to => "administrators/sessions#new"
    get "sign_out", :to => "administrators/sessions#destroy" 
  end
  get '/administrators/me', to: 'administrators#me'
  namespace :administrators do
    resources :profiles, only: [:show, :update]
  end
end
