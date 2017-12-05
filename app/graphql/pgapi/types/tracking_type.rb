# frozen_string_literal: true

module Pgapi
  module Types
    TrackingType = GraphQL::ObjectType.define do
      name 'tracking'
      description I18n.t('documentation.tracking.tracking_type')
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      interfaces [TrackingInterface]

      #
      # Instance Methods
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      #
      # Associations
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #
    end
  end
end
