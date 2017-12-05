# frozen_string_literal: true

module Pgapi
  module Types
    ServiceGooglePlusTrackingType = GraphQL::ObjectType.define do
      name 'serviceGooglePlusTracking'
      description description I18n.t('documentation.tracking.service_values', network: 'GooglePlus')

      interfaces [TrackingInterface]

      field :circledByCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :circled_by_count
      field :circledByCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :circled_by_count_week_ago
      field :circledByCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :circled_by_count_week_growth
      field :circledByCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :circled_by_count_week_avg_growth
      field :circledByCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :circled_by_count_month_ago
      field :circledByCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :circled_by_count_month_growth
      field :circledByCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :circled_by_count_month_avg_growth
      field :circledByCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :circled_by_count_year_ago
      field :circledByCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :circled_by_count_year_growth
      field :circledByCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :circled_by_count_year_avg_growth

      field :plusOneCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :plus_one_count
      field :plusOneCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :plus_one_count_week_ago
      field :plusOneCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :plus_one_count_week_growth
      field :plusOneCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :plus_one_count_week_avg_growth
      field :plusOneCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :plus_one_count_month_ago
      field :plusOneCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :plus_one_count_month_growth
      field :plusOneCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :plus_one_count_month_avg_growth
      field :plusOneCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :plus_one_count_year_ago
      field :plusOneCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :plus_one_count_year_growth
      field :plusOneCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :plus_one_count_year_avg_growth

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
