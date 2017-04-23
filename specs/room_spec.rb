require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')
require_relative ('../song.rb')
require_relative ('../guest.rb')

class TestRoom< Minitest::Test

  def test_can_create_room
    room = Room.new(1,50)
    refute_nil(room)
  end

  def test_can_create_two_rooms
    room = Room.new(1,50)
    assert_equal([1],room.can_create_two_rooms)
    assert_equal([1,1],room.can_create_two_rooms)
  end

  def test_can_add_guests
   room = Room.new(1,50)
   guest = Guest.new("Lewis", 1000, "one of a kind")
   guest2 = Guest.new("Clive", 30, "happy birthday")
   room.add_guest(guest)
   room.add_guest(guest2)
   assert_equal(1,room.number_of_guests)
 end

 def test_can_remove_guests
  room = Room.new(1,50)
  guest = Guest.new("Lewis", 1000, "one of a kind")
  guest2 = Guest.new("Clive", 500, "happy birthday")
  room.add_guest(guest)
  room.add_guest(guest2)
  room.remove_guest(guest2)
  assert_equal(1,room.number_of_guests)
end

def test_is_room_full
  room = Room.new(1,50)
  guest = Guest.new("Lewis", 1000, "one of a kind")
  guest2 = Guest.new("Clive", 500, "happy birthday")
  guest3 = Guest.new("Donald",2000, "Future sailors")
  room.add_guest(guest)
  room.add_guest(guest2)
  room.add_guest(guest3)
  assert_equal(2,room.number_of_guests)
end
 # def test_list_of_guests
 #  room = Room.new(1)
 #  guest = Guest.new("Lewis")
 #  guest2 = Guest.new("Clive")
 #  room.add_guest(guest)
 #  room.add_guest(guest2)
 #  print room.guest_array
 # end


 def test_can_add_songs
  room = Room.new(1,50)
  song = Song.new("Love me tender")
  song2 = Song.new("hotel california")
  room.add_song(song)
  room.add_song(song2)
  assert_equal(2,room.number_of_songs)
end

def test_guest_is_charged
  room = Room.new(1,50)
  guest = Guest.new("Lewis", 1000, "one of a kind")
  guest2 = Guest.new("Clive", 30, "happy birthday")
  assert_equal(950, room.guest_is_charged(guest))
  assert_equal("Sorry you don't have enough cash to enter", room.guest_is_charged(guest2))
  end


def test_can_select_song
  room = Room.new(1,50)
  song = Song.new("Love me tender")
  song2 = Song.new("hotel california")
  room.add_song(song)
  room.add_song(song2)
  assert_equal("Love me tender", room.select_song(song))
end

def test_fave_song
  room = Room.new(1,50)
  guest = Guest.new("Lewis", 1000, "one of a kind")
  assert_equal(950, room.guest_is_charged(guest))
  assert_equal("one of a kind", room.fave_song(guest))
end

def test_buy_a_beer
  room = Room.new(1,50)
  guest = Guest.new("Lewis", 1000, "one of a kind")
  assert_equal(990, room.buy_a_beer(guest))
  assert_equal("one of a kind", room.fave_song(guest))
end

end