# frozen_string_literal: true

module Pgapi
  module Types
    ServiceFlickrTrackingType = GraphQL::ObjectType.define do
      name 'serviceFlickrTracking'
      description description I18n.t('documentation.tracking.service_values', network: 'Flickr')

      interfaces [TrackingInterface]

      field :mediaCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :media_count
      field :mediaCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :media_count_week_ago
      field :mediaCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :media_count_week_growth
      field :mediaCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :media_count_week_avg_growth
      field :mediaCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :media_count_month_ago
      field :mediaCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :media_count_month_growth
      field :mediaCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :media_count_month_avg_growth
      field :mediaCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :media_count_year_ago
      field :mediaCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :media_count_year_growth
      field :mediaCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :media_count_year_avg_growth

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
