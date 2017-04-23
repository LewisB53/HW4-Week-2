require_relative 'song'
require_relative 'room'
require_relative 'guest'
require_relative 'viewer'


class Runner
  room_choice = ""
  while room_choice != 1 do


    puts "Please select room"
    puts
    puts "Press '1' for Rock"
    puts "      '2' for Country"
    puts "      '3' for Pop"


    room_choice = gets.chomp.to_i

    system("clear")
    if room_choice == 1
      room1 = Room.new(1,50)
      song1 = Song.new("love me tender")
      song2 = Song.new("hotel california")
      room1.add_song(song1)
      room1.add_song(song2)
      name1 = get_guest_name(1)
      name2 = get_guest_name(2)
      guest1 = Guest.new(name1,30, "love me tender")
      guest2 = Guest.new(name2,20, "take on me")
      room1.add_guest(guest1)
      room1.guest_is_charged(guest1)
      room1.add_guest(guest2)
      room1.guest_is_charged(guest2)
      fave_song = get_fave_song(fave_song)

      if fave_song == room1.fave_song(guest1)
        puts "We have that song!"
        puts "#{guest1.name} says WoooHOO!"
      else puts "#{guest1.name} Sorry, that song is not in the list"
      end


      puts ""
      puts "Here is the full list of songs in this room:"
      puts ""
      room1.song_array.each { |a| puts a.name }
      puts ""



      choice =  ""
      while choice != "exit" do
        puts ""
        puts "Please enter 'sing' name to perform next song"
        puts "type 'beer', to buy beer"
        puts "or type 'exit' to leave Venue"
        choice =  gets.chomp
        if choice == "beer"
          room1.buy_a_beer(guest1)
            puts "that cost £10, thanks" 
        elsif choice == "sing"
          puts "nice Job"
        elsif choice == "exit"
          puts "bye!"
          break
        else puts "Sorry I don't understand..."
        end
      end

    elsif room_choice == 2
      puts "Sorry Room 2 Full, please try another room"
    elsif room_choice == 3
      puts "Sorry Room 3 Full, please try another room"

    else puts "Please enter room number between 1 and 3"

    end
  end
end