# frozen_string_literal: true

module Pgapi
  class ApiController < ApplicationController
    #
    # Inherited Resource
    # ---------------------------------------------------------------------------------------
    #
    #
    #
    #

    inherit_resources

    #
    # Filter
    # ---------------------------------------------------------------------------------------
    #
    #
    #
    #

    # before_action :authenticate_user!

    #
    # Instance Methods
    # ---------------------------------------------------------------------------------------
    #
    #
    #
    #

    def api_token
      # render layout: 'application'
    end

    def generate_token
      resource.regenerate_api_token
      redirect_to main_app.account_path
    end

    #
    # Protected Methods
    # ---------------------------------------------------------------------------------------
    #
    #
    #
    #

    protected

    def resource
      @account = current_user
      @account
    end
  end
end
