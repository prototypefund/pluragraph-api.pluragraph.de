# frozen_string_literal: true

module Pgapi
  module Types
    OrganisationType = GraphQL::ObjectType.define do
      name 'organisation'
      description I18n.t('documentation.organisation.organisation_type')
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      field :id, !types.ID, I18n.t('documentation.uuid')
      field :name, !types.String, I18n.t('documentation.name')
      field :url, types.String, I18n.t('documentation.organisation.url')
      field :archiveNumber, types.String, I18n.t('documentation.archive_number'), property: :archive_number
      field :archivedAt, types.String, I18n.t('documentation.archived_at'), property: :archived_at
      field :deletedAt, types.String, I18n.t('documentation.deleted_at'), property: :deleted_at
      field :icon, types.String, I18n.t('documentation.organisation.icon')
      field :slug, !types.String, I18n.t('documentation.slug')
      field :sendTwitterCreateNotificationAt, types.String, I18n.t('documentation.organisation.send_twitter_create_notification_at'), property: :send_twitter_create_notification_at
      field :organisationCategoriesCount, !types.Int, I18n.t('documentation.organisation.organisation_categories_count'), property: :organisation_categories_count
      field :profilesCount, !types.Int, I18n.t('documentation.organisation.profiles_count'), property: :profiles_count
      field :coverImage, types.String, I18n.t('documentation.organisation.cover_image'), property: :cover_image
      field :sensitiveContent, !types.Boolean, I18n.t('documentation.organisation.sensitive_content'), property: :sensitive_content

      field :totalFanCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'fan count'), property: :total_fan_count
      field :totalFanCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'fan count'), property: :total_fan_count_week_ago
      field :totalFanCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'fan count'), property: :total_fan_count_week_growth
      field :totalFanCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'fan count'), property: :total_fan_count_week_avg_growth
      field :totalFanCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'fan count'), property: :total_fan_count_month_ago
      field :totalFanCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'fan count'), property: :total_fan_count_month_growth
      field :totalFanCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'fan count'), property: :total_fan_count_month_avg_growth
      field :totalFanCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'fan count'), property: :total_fan_count_year_ago
      field :totalFanCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'fan count'), property: :total_fan_count_year_growth
      field :totalFanCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'fan count'), property: :total_fan_count_year_avg_growth

      field :totalWereHereCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'were here count'), property: :total_were_here_count
      field :totalWereHereCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'were here count'), property: :total_were_here_count_week_ago
      field :totalWereHereCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'were here count'), property: :total_were_here_count_week_growth
      field :totalWereHereCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'were here count'), property: :total_were_here_count_week_avg_growth
      field :totalWereHereCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'were here count'), property: :total_were_here_count_month_ago
      field :totalWereHereCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'were herecount'), property: :total_were_here_count_month_growth
      field :totalWereHereCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'were here count'), property: :total_were_here_count_month_avg_growth
      field :totalWereHereCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'were here count'), property: :total_were_here_count_year_ago
      field :totalWereHereCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'were here count'), property: :total_were_here_count_year_growth
      field :totalWereHereCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'were here count'), property: :total_were_here_count_year_avg_growth

      field :totalTalkingAboutCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'talking about count'), property: :total_talking_about_count
      field :totalTalkingAboutCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'talking about count'), property: :total_talking_about_count_week_ago
      field :totalTalkingAboutCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'talking about count'), property: :total_talking_about_count_week_growth
      field :totalTalkingAboutCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'talking about count'), property: :total_talking_about_count_week_avg_growth
      field :totalTalkingAboutCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'talking about count'), property: :total_talking_about_count_month_ago
      field :totalTalkingAboutCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'talking about count'), property: :total_talking_about_count_month_growth
      field :totalTalkingAboutCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'talking about count'), property: :total_talking_about_count_month_avg_growth
      field :totalTalkingAboutCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'talking about count'), property: :total_talking_about_count_year_ago
      field :totalTalkingAboutCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'talking about count'), property: :total_talking_about_count_year_growth
      field :totalTalkingAboutCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'talking about count'), property: :total_talking_about_count_year_avg_growth

      field :totalFavouritesCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'favourites count'), property: :total_favourites_count
      field :totalFavouritesCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'favourites count'), property: :total_favourites_count_week_ago
      field :totalFavouritesCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'favourites count'), property: :total_favourites_count_week_growth
      field :totalFavouritesCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'favourites count'), property: :total_favourites_count_week_avg_growth
      field :totalFavouritesCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'favourites count'), property: :total_favourites_count_month_ago
      field :totalFavouritesCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'favourites count'), property: :total_favourites_count_month_growth
      field :totalFavouritesCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'favourites count'), property: :total_favourites_count_month_avg_growth
      field :totalFavouritesCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'favourites count'), property: :total_favourites_count_year_ago
      field :totalFavouritesCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'favourites count'), property: :total_favourites_count_year_growth
      field :totalFavouritesCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'favourites count'), property: :total_favourites_count_year_avg_growth

      field :totalFollowerCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'follower count'), property: :total_follower_count
      field :totalFollowerCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'follower count'), property: :total_follower_count_week_ago
      field :totalFollowerCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'follower count'), property: :total_follower_count_week_growth
      field :totalFollowerCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'follower count'), property: :total_follower_count_week_avg_growth
      field :totalFollowerCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'follower count'), property: :total_follower_count_month_ago
      field :totalFollowerCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'follower count'), property: :total_follower_count_month_growth
      field :totalFollowerCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'follower count'), property: :total_follower_count_month_avg_growth
      field :totalFollowerCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'follower count'), property: :total_follower_count_year_ago
      field :totalFollowerCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'follower count'), property: :total_follower_count_year_growth
      field :totalFollowerCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'follower count'), property: :total_follower_count_year_avg_growth

      field :totalFriendsCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'friends  count'), property: :total_friends_count
      field :totalFriendsCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'friends  count'), property: :total_friends_count_week_ago
      field :totalFriendsCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'friends count'), property: :total_friends_count_week_growth
      field :totalFriendsCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'fan count'), property: :total_friends_count_week_avg_growth
      field :totalFriendsCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'friends  count'), property: :total_friends_count_month_ago
      field :totalFriendsCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'friends  count'), property: :total_friends_count_month_growth
      field :totalFriendsCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'friends  count'), property: :total_friends_count_month_avg_growth
      field :totalFriendsCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'friends  count'), property: :total_friends_count_year_ago
      field :totalFriendsCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'friends count'), property: :total_friends_count_year_growth
      field :totalFriendsCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'friends  count'), property: :total_friends_count_year_avg_growth

      field :totalMediaViewsCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'media views count'), property: :total_media_views_count
      field :totalMediaViewsCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'media views count'), property: :total_media_views_count_week_ago
      field :totalMediaViewsCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'media views count'), property: :total_media_views_count_week_growth
      field :totalMediaViewsCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'media views count'), property: :total_media_views_count_week_avg_growth
      field :totalMediaViewsCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'media views count'), property: :total_media_views_count_month_ago
      field :totalMediaViewsCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'media views count'), property: :total_media_views_count_month_growth
      field :totalMediaViewsCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'media views count'), property: :total_media_views_count_month_avg_growth
      field :totalMediaViewsCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'media views count'), property: :total_media_views_count_year_ago
      field :totalMediaViewsCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'media views count'), property: :total_media_views_count_year_growth
      field :totalMediaViewsCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'media views count'), property: :total_media_views_count_year_avg_growth

      field :totalMediaCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'media count'), property: :total_media_count
      field :totalMediaCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'media count'), property: :total_media_count_week_ago
      field :totalMediaCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'media count'), property: :total_media_count_week_growth
      field :totalMediaCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'media count'), property: :total_media_count_week_avg_growth
      field :totalMediaCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'media count'), property: :total_media_count_month_ago
      field :totalMediaCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'media count'), property: :total_media_count_month_growth
      field :totalMediaCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'media count'), property: :total_media_count_month_avg_growth
      field :totalMediaCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'media count'), property: :total_media_count_year_ago
      field :totalMediaCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'media count'), property: :total_media_count_year_growth
      field :totalMediaCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'media count'), property: :total_media_count_year_avg_growth

      field :totalCircledByCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'circled by count'), property: :total_circled_by_count
      field :totalCircledByCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'circled by count'), property: :total_circled_by_count_week_ago
      field :totalCircledByCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'circled by count'), property: :total_circled_by_count_week_growth
      field :totalCircledByCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'circled by count'), property: :total_circled_by_count_week_avg_growth
      field :totalCircledByCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'circled by count'), property: :total_circled_by_count_month_ago
      field :totalCircledByCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'circled by count'), property: :total_circled_by_count_month_growth
      field :totalCircledByCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'circled by count'), property: :total_circled_by_count_month_avg_growth
      field :totalCircledByCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'circled by count'), property: :total_circled_by_count_year_ago
      field :totalCircledByCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'circled by count'), property: :total_circled_by_count_year_growth
      field :totalCircledByCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'circled by count'), property: :total_circled_by_count_year_avg_growth

      field :totalPlusOneCount, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'plus one count'), property: :total_plus_one_count
      field :totalPlusOneCountWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'plus one count'), property: :total_plus_one_count_week_ago
      field :totalPlusOneCountWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'plus one count'), property: :total_plus_one_count_week_growth
      field :totalPlusOneCountWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'plus one count'), property: :total_plus_one_count_week_avg_growth
      field :totalPlusOneCountMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'plus one count'), property: :total_plus_one_count_month_ago
      field :totalPlusOneCountMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'plus one count'), property: :total_plus_one_count_month_growth
      field :totalPlusOneCountMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'plus one count'), property: :total_plus_one_count_month_avg_growth
      field :totalPlusOneCountYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'plus one count'), property: :total_plus_one_count_year_ago
      field :totalPlusOneCountYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'plus one count'), property: :total_plus_one_count_year_growth
      field :totalPlusOneCountYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'plus one count'), property: :total_plus_one_count_year_avg_growth

      field :rankValue, !types.Int, I18n.t('documentation.organisation.total_count', tracked_value: 'were here count'), property: :rank_value
      field :rankValueGrowth, !types.Int,  property: :rank_value
      field :rankValueWeekAgo, !types.Int, I18n.t('documentation.organisation.total_count_week_ago', tracked_value: 'rank value'), property: :rank_value_week_ago
      field :rankValueWeekGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_growth', tracked_value: 'rank value'), property: :rank_value_week_growth
      field :rankValueWeekAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_week_avg_growth', tracked_value: 'rank value'), property: :rank_value_week_avg_growth
      field :rankValueMonthAgo, !types.Int, I18n.t('documentation.organisation.total_count_month_ago', tracked_value: 'rank value'), property: :rank_value_month_ago
      field :rankValueMonthGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_growth', tracked_value: 'rank value'), property: :rank_value_month_growth
      field :rankValueMonthAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_month_avg_growth', tracked_value: 'rank value'), property: :rank_value_month_avg_growth
      field :rankValueYearAgo, !types.Int, I18n.t('documentation.organisation.total_count_year_ago', tracked_value: 'rank value'), property: :rank_value_year_ago
      field :rankValueYearGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_growth', tracked_value: 'rank value'), property: :rank_value_year_growth
      field :rankValueYearAvgGrowth, !types.Int, I18n.t('documentation.organisation.total_count_year_avg_growth', tracked_value: 'rank value'), property: :rank_value_year_avg_growth

      field :updatedAt, types.String, I18n.t('documentation.updated_at'), property: :updated_at
      field :createdAt, types.String, I18n.t('documentation.created_at'), property: :created_at

      #
      # Instance Methods
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      field :shortUrl, types.String do
        description I18n.t('documentation.organisation.short_url')
        resolve ->(obj, _args, _ctx) { obj.short_url }
      end

      #
      # Ancestry Methods
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      field :ancestry, types[OrganisationType] do
        description I18n.t('documentation.ancestry')
        resolve ->(obj, _args, _ctx) { Organisation.find(obj.ancestor_ids) }
      end

      field :hasParent, !types.Boolean do
        description I18n.t('documentation.has_parent')
        resolve ->(obj, _args, _ctx) { obj.has_parent? }
      end

      field :hasChildren, !types.Boolean do
        description I18n.t('documentation.has_children')
        resolve ->(obj, _args, _ctx) { obj.has_children? }
      end

      field :isRoot, !types.Boolean do
        description I18n.t('documentation.is_root')
        resolve ->(obj, _args, _ctx) { obj.is_root? }
      end

      field :ancestryParent, OrganisationType do
        description I18n.t('documentation.ancestry_parent')
        resolve ->(obj, _args, _ctx) { obj.parent }
      end

      field :ancestryRoot, OrganisationType do
        description I18n.t('documentation.ancestry_root')
        resolve ->(obj, _args, _ctx) { obj.root }
      end

      #
      # Associations
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      field :user, -> { UserType }, I18n.t('documentation.user_field')
      connection :categories, CategoryType.connection_type do
        description I18n.t('documentation.connection.categories')
        resolve ->(obj, _args, _ctx) { obj.categories.ordered }
      end
      connection :profiles, ProfileType.connection_type do
        description I18n.t('documentation.connection.profiles')
        resolve ->(obj, _args, _ctx) { obj.profiles.ranked.ordered }
      end
      connection :networks, NetworkType.connection_type do
        description I18n.t('documentation.connection.networks')
        resolve ->(obj, _args, _ctx) { obj.networks.used }
      end
    end
  end
end
