# frozen_string_literal: true

require 'graphql'
require 'graphql/guard'
module Pgapi
  class Engine < ::Rails::Engine
    isolate_namespace Pgapi
  end
end
