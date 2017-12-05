# frozen_string_literal: true

module Pgapi
  module Types
    CategoryType = GraphQL::ObjectType.define do
      name 'category'
      description I18n.t('documentation.category.category_type')
      guard ->(obj, _args, ctx) { ctx[:current_ability].can?(:read, obj) }

      field :id, !types.ID, I18n.t('documentation.uuid')
      field :name, !types.String, I18n.t('documentation.name')
      field :description, types.String, I18n.t('documentation.description')
      field :position, !types.Int, I18n.t('documentation.category.position')
      field :slug, !types.String, I18n.t('documentation.slug')
      field :organisationCategoriesCount, !types.Int, I18n.t('documentation.category.organisation_categories_count'), property: :organisation_categories_count
      field :sensitiveContent, !types.Boolean, I18n.t('documentation.category.sensitive_content'), property: :sensitive_content

      field :updatedAt, types.String, I18n.t('documentation.updated_at'), property: :updated_at
      field :createdAt, types.String, I18n.t('documentation.created_at'), property: :created_at

      #
      # Ancestry Methods
      # ---------------------------------------------------------------------------------------
      #
      #
      #
      #

      field :ancestry, types[CategoryType] do
        description I18n.t('documentation.ancestry')
        resolve ->(obj, _args, _ctx) { Category.find(obj.ancestor_ids) }
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

      field :ancestryParent, CategoryType do
        description I18n.t('documentation.ancestry_parent')
        resolve ->(obj, _args, _ctx) { obj.parent }
      end

      field :ancestryRoot, CategoryType do
        description I18n.t('documentation.ancestry_root')
        resolve ->(obj, _args, _ctx) { obj.root }
      end

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

      field :user, -> { UserType }, I18n.t('documentation.user_field')
      connection :organisations, OrganisationType.connection_type do
        description I18n.t('documentation.connection.organisations')
        resolve ->(obj, _args, _ctx) { obj.organisations.ranked.ordered }
      end
    end
  end
end
