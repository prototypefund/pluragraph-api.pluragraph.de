# frozen_string_literal: true

module Pgapi
  module Types
    NetworkType = GraphQL::ObjectType.define do
      name 'network'
      description I18n.t('documentation.network.network_type')
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      field :id, !types.ID, I18n.t('documentation.uuid')
      field :name, !types.String, I18n.t('documentation.name')
      field :description, types.String, I18n.t('documentation.description')
      field :internalHandler, types.String, I18n.t('documentation.network.internal_handler'), property: :internal_handler
      field :showFields, types.String, I18n.t('documentation.network.show_fields'), property: :show_fields
      field :slug, !types.String, I18n.t('documentation.slug')
      field :icon, !types.String, I18n.t('documentation.network.icon')
      field :hostName, types.String, I18n.t('documentation.network.host_name'), property: :host_name
      field :profilesCount, !types.Int, I18n.t('documentation.network.profiles_count'), property: :profiles_count

      field :updatedAt, types.String, I18n.t('documentation.updated_at'), property: :updated_at
      field :createdAt, types.String, I18n.t('documentation.created_at'), property: :created_at

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

      field :user, -> { UserType }, I18n.t('documentation.user_field')
      connection :profiles, ProfileType.connection_type do
        description I18n.t('documentation.connection.profiles')
        resolve ->(obj, _args, _ctx) { obj.profiles.ranked.ordered }
      end
    end
  end
end
