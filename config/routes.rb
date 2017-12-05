# frozen_string_literal: true

Pgapi::Engine.routes.draw do
  post '/graphql', to: 'graphql#execute'

  get :api_token, controller: :api
  patch :generate_token, controller: :api
end
