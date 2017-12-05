# frozen_string_literal: true

require 'test_helper'

class Pgapi::Test < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, Pgapi
  end
end
