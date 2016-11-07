require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "that slug is generated upon create" do
    link = Link.create!(source_url: "http://www.stackoverflow.com")
    refute_nil link.slug
  end
end
