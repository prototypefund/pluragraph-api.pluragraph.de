# frozen_string_literal: true

module Pgapi
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    helper Rails.application.routes.url_helpers

    def authenticate_by_api_token!
      authenticate_or_request_with_http_token do |token, _|
        user = User.find_by(api_token: token)
        raise 'InvalidToken' if user.blank?
        sign_in(user)
        user
      end
    end
  end
end
