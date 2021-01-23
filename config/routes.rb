# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :administrators
  get '/me', to: 'administrators#me'
end
