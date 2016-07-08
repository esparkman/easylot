require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  setup do
    @announcement = Fabricate(:announcement)
  end

  test "Valid Announcement" do
    assert @announcement.valid?
  end
end
