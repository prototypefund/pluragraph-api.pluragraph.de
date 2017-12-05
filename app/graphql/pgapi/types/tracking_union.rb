# frozen_string_literal: true

module Pgapi
  module Types
    TrackingUnion = GraphQL::UnionType.define do
      name 'TrackingUnion'
      description I18n.t('documentation.tracking.tracking_union')
      possible_types [ServiceFacebookTrackingType, ServiceFlickrTrackingType, ServiceGooglePlusTrackingType, ServiceInstagramTrackingType, ServiceTwitterTrackingType, ServiceYoutubeTrackingType]
      resolve_type ->(obj, _ctx) {
        case obj.class.name
        when 'Service::Facebook::Tracking'
          ServiceFacebookTrackingType
        when 'Service::Flickr::Tracking'
          ServiceFlickrTrackingType
        when 'Service::GooglePlus::Tracking'
          ServiceGooglePlusTrackingType
        when 'Service::Instagram::Tracking'
          ServiceInstagramTrackingType
        when 'Service::Twitter::Tracking'
          ServiceTwitterTrackingType
        when 'Service::Youtube::Tracking'
          ServiceYoutubeTrackingType
        else
          raise obj.class.name.inspect
        end

        # (obj.class.name + 'Type').gsub('::', '').constantize
      }
    end
  end
end
