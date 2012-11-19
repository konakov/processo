require 'test_helper'

class ProcessTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Process.new.valid?
  end
end
