# frozen_string_literal: true

module Pgapi
  Types::QueryType = GraphQL::ObjectType.define do
    description I18n.t('documentation.query.query_type')
    name 'Query'

    field :categories, types[Types::CategoryType] do
      description I18n.t('documentation.query.categories')
      resolve ->(_obj, _args, _ctx) { Category.ordered }
    end

    field :category, Types::CategoryType do
      description I18n.t('documentation.query.category')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Category.find(args[:id]) }
    end

    field :networks, types[Types::NetworkType] do
      description I18n.t('documentation.query.networks')
      resolve ->(_obj, _args, _ctx) { Network.used }
    end

    field :network, Types::NetworkType do
      description I18n.t('documentation.query.network')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Network.find(args[:id]) }
    end

    field :organisations, types[Types::OrganisationType] do
      description I18n.t('documentation.query.organisations')
      resolve ->(_obj, _args, _ctx) { Organisation.ranked.ordered }
    end

    field :organisation, Types::OrganisationType do
      description I18n.t('documentation.query.organisation')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Organisation.find(args[:id]) }
    end

    field :profiles, types[Types::ProfileType] do
      description I18n.t('documentation.query.profiles')
      resolve ->(_obj, _args, _ctx) { Profile.ranked.ordered }
    end

    field :profile, Types::ProfileType do
      description I18n.t('documentation.query.profile')
      argument :id, !types.ID
      resolve ->(_obj, args, _ctx) { Profile.find(args[:id]) }
    end

    field :trackings, types[Types::TrackingUnion] do
      description I18n.t('documentation.query.trackings')
      argument :profile_id, !types.ID
      resolve ->(_obj, args, _ctx) { Profile.find(args[:profile_id]).trackings.ordered }
    end

    field :user, Types::UserType do
      description I18n.t('documentation.query.user')
      resolve ->(_obj, _args, ctx) { ctx[:current_user] }
    end

    field :watchlists, types[Types::WatchlistType] do
      description I18n.t('documentation.query.watchlists')
      resolve ->(_obj, _args, ctx) { ctx[:current_user].watchlists.ordered }
    end

    field :watchlist, Types::WatchlistType do
      description I18n.t('documentation.query.watchlist')
      argument :id, !types.ID
      resolve ->(_obj, args, ctx) { ctx[:current_user].watchlists.find(args[:id]) }
    end
  end
end
