# frozen_string_literal: true

module Pgapi
  module Types
    ServiceYoutubeTrackingType = GraphQL::ObjectType.define do
      name 'serviceYoutubeTracking'
      description description I18n.t('documentation.tracking.service_values', network: 'Youtube')

      interfaces [TrackingInterface]

      field :mediaViewsCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :media_views_count
      field :mediaViewsCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :media_views_count_week_ago
      field :mediaViewsCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :media_views_count_week_growth
      field :mediaViewsCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :media_views_count_week_avg_growth
      field :mediaViewsCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :media_views_count_month_ago
      field :mediaViewsCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :media_views_count_month_growth
      field :mediaViewsCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :media_views_count_month_avg_growth
      field :mediaViewsCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :media_views_count_year_ago
      field :mediaViewsCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :media_views_count_year_growth
      field :mediaViewsCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :media_views_count_year_avg_growth

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
