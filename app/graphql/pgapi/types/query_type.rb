# frozen_string_literal: true

module Pgapi
  Types::QueryType = GraphQL::ObjectType.define do
    description I18n.t('documentation.query.query_type')
    name 'Query'

    field :categories, types[Types::CategoryType] do
      description I18n.t('documentation.query.categories')
      argument :limit, types.Int
      resolve ->(_obj, args, _ctx) { Category.ordered.limit(args[:limit] || 100) }
    end

    field :category, Types::CategoryType do
      description I18n.t('documentation.query.category')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Category.find(args[:id]) }
    end

    field :networks, types[Types::NetworkType] do
      description I18n.t('documentation.query.networks')
      argument :limit, types.Int
      resolve ->(_obj, args, _ctx) { Network.used.limit(args[:limit] || 100) }
    end

    field :network, Types::NetworkType do
      description I18n.t('documentation.query.network')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Network.find(args[:id]) }
    end

    field :organisations, types[Types::OrganisationType] do
      description I18n.t('documentation.query.organisations')
      argument :limit, types.Int
      resolve ->(_obj, args, _ctx) { Organisation.ranked.ordered.limit(args[:limit] || 100) }
    end

    field :organisation, Types::OrganisationType do
      description I18n.t('documentation.query.organisation')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Organisation.find(args[:id]) }
    end

    field :profiles, types[Types::ProfileType] do
      description I18n.t('documentation.query.profiles')
      argument :limit, types.Int
      resolve ->(_obj, args, _ctx) { Profile.ranked.ordered.limit(args[:limit] || 100) }
    end

    field :profile, Types::ProfileType do
      description I18n.t('documentation.query.profile')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Profile.find(args[:id]) }
    end

    field :trackings, types[Types::TrackingUnion] do
      description I18n.t('documentation.query.trackings')
      argument :profile_id, !types.ID
      argument :limit, types.Int
      resolve ->(_obj, args, _ctx) { Profile.find(args[:profile_id]).trackings.ordered.limit(args[:limit] || 100) }
    end

    field :user, Types::UserType do
      description I18n.t('documentation.query.user')
      resolve ->(_obj, _args, ctx) { ctx[:current_user] }
    end

    field :watchlists, types[Types::WatchlistType] do
      description I18n.t('documentation.query.watchlists')
      argument :limit, types.Int
      resolve ->(_obj, args, ctx) { ctx[:current_user].watchlists.ordered.limit(args[:limit] || 100) }
    end

    field :watchlist, Types::WatchlistType do
      description I18n.t('documentation.query.watchlist')
      argument :id, !types.ID
      resolve ->(_obj, args, ctx) { ctx[:current_user].watchlists.find(args[:id]) }
    end
  end
end
