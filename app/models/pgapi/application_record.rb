# frozen_string_literal: true

module Pgapi
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
