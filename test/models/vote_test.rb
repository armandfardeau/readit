require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "Votes have a story" do
    assert stories:(:one) == votes(:one).story
  end
end
