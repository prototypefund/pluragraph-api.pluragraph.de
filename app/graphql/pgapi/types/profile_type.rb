# frozen_string_literal: true

module Pgapi
  module Types
    ProfileType = GraphQL::ObjectType.define do
      name 'profile'
      description I18n.t('documentation.profile.profile_type')
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      field :id, !types.ID, I18n.t('documentation.uuid')
      field :identifier, !types.String, I18n.t('documentation.profile.identifier')
      field :url, types.String, I18n.t('documentation.profile.url')
      field :archiveNumber, types.String, I18n.t('documentation.archive_number'), property: :archive_number
      field :archivedAt, types.String, I18n.t('documentation.archived_at'), property: :archived_at
      field :deletedAt, types.String, I18n.t('documentation.deleted_at'), property: :deleted_at
      field :lastApiUpdate, !types.String, I18n.t('documentation.profile.last_api_update'), property: :last_api_update
      field :icon, types.String, I18n.t('documentation.profile.icon')
      field :defective, !types.Boolean, I18n.t('documentation.profile.defective')
      field :isMasterProfile, !types.Boolean, I18n.t('documentation.profile.is_master_profile'), property: :is_master_profile
      field :idAtService, types.String, I18n.t('documentation.profile.id_at_service'), property: :id_at_service
      field :coverImage, types.String, I18n.t('documentation.profile.cover_image'), property: :cover_image
      field :type, !types.String, I18n.t('documentation.profile.type')

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

      field :rankValue, !types.Int, I18n.t('documentation.profile.tracked_value_count'), property: :rank_value
      field :rankValueGrowth, !types.Int, property: :rank_value
      field :rankValueWeekAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_ago'), property: :rank_value_week_ago
      field :rankValueWeekGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_growth'), property: :rank_value_week_growth
      field :rankValueWeekAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_week_avg_growth'), property: :rank_value_week_avg_growth
      field :rankValueMonthAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_ago'), property: :rank_value_month_ago
      field :rankValueMonthGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_growth'), property: :rank_value_month_growth
      field :rankValueMonthAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_month_avg_growth'), property: :rank_value_month_avg_growth
      field :rankValueYearAgo, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_ago'), property: :rank_value_year_ago
      field :rankValueYearGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_growth'), property: :rank_value_year_growth
      field :rankValueYearAvgGrowth, !types.Int, I18n.t('documentation.profile.tracked_value_count_year_avg_growth'), property: :rank_value_year_avg_growth

      field :updatedAt, types.String, I18n.t('documentation.updated_at'), property: :updated_at
      field :createdAt, types.String, I18n.t('documentation.created_at'), property: :created_at

      #
      # Instance Methods
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      field :rankValueAttributeName, types.String do
        description I18n.t('documentation.profile.rank_value_attribute_name')
        resolve ->(obj, _args, _ctx) { obj.rank_value_attribute_name }
      end

      field :urlToExternalProfile, types.String do
        description I18n.t('documentation.profile.url_to_external_profile')
        resolve ->(obj, _args, _ctx) { obj.url_to_external_profile }
      end

      field :nameOfExternalLink, types.String do
        description I18n.t('documentation.profile.name_of_external_link')
        resolve ->(obj, _args, _ctx) { obj.name_of_external_link }
      end

      #
      # Associations
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #
      #
      field :user, -> { UserType }, I18n.t('documentation.user_field')
      field :organisation, -> { OrganisationType }, I18n.t('documentation.organisation.organisation_type')
      field :network, -> { NetworkType }, I18n.t('documentation.network.network_type')
      connection :trackings, TrackingUnion.connection_type do
        description I18n.t('documentation.connection.trackings')
        resolve ->(obj, _args, _ctx) { obj.trackings.ordered }
      end
    end
  end
end
