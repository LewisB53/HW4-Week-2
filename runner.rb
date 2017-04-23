require_relative 'song'
require_relative 'room'
require_relative 'guest'
require_relative 'viewer'

class Runner

  puts "Please select room"
  puts
  puts "Press '1' for Rock"
  puts "      '2' for RnB"
  puts "      '3' for HipHop"
  puts "      '4' for Pop"
  puts "      '5' for Blues"

  room_choice = gets.chomp.to_i
  if room_choice = 1
  room1 = Room.new(1,50)
  end

  name1 = get_guest_name(1)
  name2 = get_guest_name(2)
  guest1 = Guest.new(name1,500)
  guest2 = Guest.new(name2,1000)
  song1 = Song.new("love me tender")
  song2 = Song.new("hotel california")
  room1.add_guest(guest1)
  room1.add_guest(guest2)
  room1.add_song(song1)
  print room1.add_song(song2)

 


  def initialize(viewer)
   



  end

  def setup

 
  end

end
