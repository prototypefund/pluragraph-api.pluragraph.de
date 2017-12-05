# frozen_string_literal: true

module Pgapi
  module Types
    ServiceTwitterTrackingType = GraphQL::ObjectType.define do
      name 'serviceTwitterTracking'
      description description I18n.t('documentation.tracking.service_values', network: 'Twitter')

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

      field :friendsCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :friends_count
      field :friendsCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :friends_count_week_ago
      field :friendsCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :friends_count_week_growth
      field :friendsCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :friends_count_week_avg_growth
      field :friendsCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :friends_count_month_ago
      field :friendsCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :friends_count_month_growth
      field :friendsCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :friends_count_month_avg_growth
      field :friendsCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :friends_count_year_ago
      field :friendsCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :friends_count_year_growth
      field :friendsCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :friends_count_year_avg_growth

      field :favouritesCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :favourites_count
      field :favouritesCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :favourites_count_week_ago
      field :favouritesCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :favourites_count_week_growth
      field :favouritesCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :favourites_count_week_avg_growth
      field :favouritesCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :favourites_count_month_ago
      field :favouritesCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :favourites_count_month_growth
      field :favouritesCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :favourites_count_month_avg_growth
      field :favouritesCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :favourites_count_year_ago
      field :favouritesCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :favourites_count_year_growth
      field :favouritesCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :favourites_count_year_avg_growth

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
