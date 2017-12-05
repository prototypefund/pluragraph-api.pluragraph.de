# frozen_string_literal: true

require_dependency 'pgapi/application_controller'

module Pgapi
  class GraphqlController < ApplicationController
    before_action :authenticate_by_api_token!

    def execute
      variables = ensure_hash(params[:variables])
      query = params[:query]
      operation_name = params[:operationName]
      context = {
        # Query context goes here, for example:
        current_user: current_user,
        current_ability: Ability.new(current_user)
      }
      result = PluragraphSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
      render json: result
    end

    private

    # Handle form data, JSON body, or a blank value
    def ensure_hash(ambiguous_param)
      case ambiguous_param
      when String
        if ambiguous_param.present?
          ensure_hash(JSON.parse(ambiguous_param))
        else
          {}
        end
      when Hash, ActionController::Parameters
        ambiguous_param
      when nil
        {}
      else
        raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
      end
    end
  end
end
