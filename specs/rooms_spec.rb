require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../rooms.rb')

class TestRooms< Minitest::Test

  def test_can_create_room
    room = Rooms.new(1)
   refute_nil(room)
  end

end