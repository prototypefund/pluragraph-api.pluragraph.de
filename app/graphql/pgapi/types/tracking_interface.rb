# frozen_string_literal: true

module Pgapi
  module Types
    TrackingInterface = GraphQL::InterfaceType.define do
      name 'trackingInterface'
      description I18n.t('documentation.tracking.tracking_interface')

      field :id, !types.String, I18n.t('documentation.uuid')
      field :date, !types.String, I18n.t('documentation.tracking.date')

      field :archiveNumber, types.String, I18n.t('documentation.archive_number'), property: :archive_number
      field :archivedAt, types.String, I18n.t('documentation.archived_at'), property: :archived_at

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

      field :organisation, -> { OrganisationType }, I18n.t('documentation.organisation.organisation_type')
      field :profile, -> { ProfileType }, I18n.t('documentation.profile.profile_type')
    end
  end
end
