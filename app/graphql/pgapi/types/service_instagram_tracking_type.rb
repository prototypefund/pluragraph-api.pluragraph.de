# frozen_string_literal: true

module Pgapi
  module Types
    ServiceInstagramTrackingType = GraphQL::ObjectType.define do
      name 'serviceInstagramTracking'
      description description I18n.t('documentation.tracking.service_values', network: 'Instagram')

      interfaces [TrackingInterface]

      field :followerCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :follower_count
      field :followerCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :follower_count_week_ago
      field :followerCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :follower_count_week_growth
      field :followerCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :follower_count_week_avg_growth
      field :followerCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :follower_count_month_ago
      field :followerCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :follower_count_month_growth
      field :followerCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :follower_count_month_avg_growth
      field :followerCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :follower_count_year_ago
      field :followerCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :follower_count_year_growth
      field :followerCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :follower_count_year_avg_growth

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
