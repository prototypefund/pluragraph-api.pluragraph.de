# frozen_string_literal: true

module Pgapi
  module Types
    UserType = GraphQL::ObjectType.define do
      name 'user'
      description 'current user'
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      field :id, !types.ID, I18n.t('documentation.uuid')
      field :email, !types.String, I18n.t('documentation.user.email')
      field :firstName, types.String, I18n.t('documentation.user.first_name'), property: :first_name
      field :lastName, types.String, I18n.t('documentation.user.last_name'), property: :last_name
      field :receiveNewsletter, types.Boolean, I18n.t('documentation.user.receive_newsletter'), property: :receive_newsletter
      field :salutation, types.String, I18n.t('documentation.user.salutation')
      field :organisationsCount, types.Int, I18n.t('documentation.user.organisations_count'), property: :organisations_count
      field :organisationCategoriesCount, types.Int, I18n.t('documentation.user.organisation_categories_count'), property: :organisation_categories_count
      field :profilesCount, types.Int, I18n.t('documentation.user.profiles_count'), property: :profiles_count

      field :updatedAt, types.String, I18n.t('documentation.updated_at'), property: :updated_at
      field :createdAt, types.String, I18n.t('documentation.created_at'), property: :created_at

      #
      # Instance Methods
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      field :fullName, types.String do
        description I18n.t('documentation.user.full_name')
        resolve ->(obj, _args, _ctx) { obj.full_name }
      end

      #
      # Associations
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      connection :categories, CategoryType.connection_type do
        description I18n.t('documentation.connection.categories')
        resolve ->(obj, _args, _ctx) { obj.categories.ordered }
      end
      connection :networks, NetworkType.connection_type do
        description I18n.t('documentation.connection.networks')
        resolve ->(obj, _args, _ctx) { obj.networks.used }
      end
      connection :organisations, OrganisationType.connection_type do
        description I18n.t('documentation.connection.organisations')
        resolve ->(obj, _args, _ctx) { obj.organisations.ranked.ordered }
      end
      connection :profiles, ProfileType.connection_type do
        description I18n.t('documentation.connection.profiles')
        resolve ->(obj, _args, _ctx) { obj.profiles.ranked.ordered }
      end
      connection :watchlists, WatchlistType.connection_type do
        description I18n.t('documentation.connection.watchlists')
        resolve ->(obj, _args, _ctx) { obj.watchlists.ordered }
      end
    end
  end
end
