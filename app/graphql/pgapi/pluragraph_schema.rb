# frozen_string_literal: true

module Pgapi
  PluragraphSchema = GraphQL::Schema.define do
    # mutation(Types::MutationType)
    resolve_type ->(type, obj, ctx) {}
    query(Types::QueryType)
    use GraphQL::Guard.new

    max_depth 8
    max_complexity 100
  end
end
