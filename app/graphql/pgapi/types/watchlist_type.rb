# frozen_string_literal: true

module Pgapi
  module Types
    WatchlistType = GraphQL::ObjectType.define do
      name 'watchlist'
      description I18n.t('documentation.watchlist.watchlist_type')
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      field :id, !types.String, I18n.t('documentation.uuid')
      field :name, !types.String, I18n.t('documentation.name')
      field :slug, !types.String, I18n.t('documentation.slug')
      field :mailOptions, !types.String, I18n.t('documentation.watchlist.mail_options'), property: :mail_options
      field :shareable, !types.Boolean, I18n.t('documentation.watchlist.shareable')

      field :updatedAt, types.String, I18n.t('documentation.updated_at'), property: :updated_at
      field :createdAt, types.String, I18n.t('documentation.updated_at'), property: :created_at

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
      connection :organisations, OrganisationType.connection_type do
        description I18n.t('documentation.connection.organisations')
        resolve ->(obj, _args, _ctx) {
          organisation_ids = obj.watchlist_memberships.membershipable_type('Organisation').pluck(:watchlist_membershipable_id)
          organisation_ids << obj.watchlist_memberships.membershipable_type('Category').collect(&:watchlist_membershipable).collect { |category| OrganisationCategory.in_category(category).uniq.pluck(:organisation_id) }.flatten
          organisations = Organisation.where(id: organisation_ids.flatten).ranked.ordered
          organisations
        }
      end
      connection :profiles, ProfileType.connection_type do
        description I18n.t('documentation.connection.profiles')
        resolve ->(obj, _args, _ctx) {
          organisation_ids = obj.watchlist_memberships.membershipable_type('Organisation').pluck(:watchlist_membershipable_id)
          organisation_ids << obj.watchlist_memberships.membershipable_type('Category').collect(&:watchlist_membershipable).collect { |category| OrganisationCategory.in_category(category).uniq.pluck(:organisation_id) }.flatten
          organisations = Organisation.where(id: organisation_ids.flatten).ranked.ordered
          profiles = organisations.collect { |organisation| organisation.profiles.ranked.ordered }
          profiles.flatten
        }
      end
    end
  end
end
