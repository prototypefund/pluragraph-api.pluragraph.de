# frozen_string_literal: true

module Pgapi
  module Types
    ServiceFacebookTrackingType = GraphQL::ObjectType.define do
      name 'serviceFacebookTracking'
      description I18n.t('documentation.tracking.service_values', network: 'Facebook')

      interfaces [TrackingInterface]

      field :fanCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :fan_count
      field :fanCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :fan_count_week_ago
      field :fanCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :fan_count_week_growth
      field :fanCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :fan_count_week_avg_growth
      field :fanCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :fan_count_month_ago
      field :fanCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :fan_count_month_growth
      field :fanCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :fan_count_month_avg_growth
      field :fanCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :fan_count_year_ago
      field :fanCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :fan_count_year_growth
      field :fanCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :fan_count_year_avg_growth

      field :wereHereCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :were_here_count
      field :wereHereCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :were_here_count_week_ago
      field :wereHereCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :were_here_count_week_growth
      field :wereHereCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :were_here_count_week_avg_growth
      field :wereHereCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :were_here_count_month_ago
      field :wereHereCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :were_here_count_month_growth
      field :wereHereCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :were_here_count_month_avg_growth
      field :wereHereCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :were_here_count_year_ago
      field :wereHereCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :were_here_count_year_growth
      field :wereHereCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :were_here_count_year_avg_growth

      field :talkingAboutCount, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :talking_about_count
      field :talkingAboutCountWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :talking_about_count_week_ago
      field :talkingAboutCountWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :talking_about_count_week_growth
      field :talkingAboutCountWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :talking_about_count_week_avg_growth
      field :talkingAboutCountMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :talking_about_count_month_ago
      field :talkingAboutCountMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :talking_about_count_month_growth
      field :talkingAboutCountMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :talking_about_count_month_avg_growth
      field :talkingAboutCountYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :talking_about_count_year_ago
      field :talkingAboutCountYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :talking_about_count_year_growth
      field :talkingAboutCountYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :talking_about_count_year_avg_growth

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
