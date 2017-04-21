require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../rooms.rb')
require_relative ('../songs.rb')
require_relative ('../guests.rb')

class TestRooms< Minitest::Test

  def test_can_create_room
    room = Rooms.new(1)
   refute_nil(room)
  end

  def test_can_create_two_rooms
    room = Rooms.new(1)
    assert_equal([1],room.can_create_two_rooms)
    assert_equal([1,1],room.can_create_two_rooms)
  end


  def test_can_add_songs
    room = Rooms.new(1)
    song = Songs.new("Love me tender")
    song2 = Songs.new("hotel california")
    room.add_song(song)
    room.add_song(song2)
    assert_equal(2,room.number_of_songs)
  end



end