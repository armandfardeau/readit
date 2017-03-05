require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test "is not valid without a name" do
    s = story.create(name: nil, link: "www.example.com")
  
  end
end
