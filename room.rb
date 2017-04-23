class  Room
  attr_reader :room_number
  attr_accessor :guest_array
  attr_accessor :song_array


  def initialize(number,cost)
    @number = number
    @cost = cost
    @song_array =[]
    @guest_array =[]
    @room_array = []
  end

  def can_create_two_rooms
    @room_array << @number  
    return @room_array
  end

  def add_guest(guest)
    if @guest_array.count < 2 && guest.cash > 50
     @guest_array << guest 
   end
 end

 def number_of_guests
  return @guest_array.count
end

  # def list_of_guests
  #  @guest_array
  # end

  def remove_guest(guest)
    return @guest_array.pop
  end

  def add_song(song)
    @song_array << song
    return @song_array
  end

  def number_of_songs
    return @song_array.count
  end

  def guest_is_charged(guest)
    if guest.cash > 50
      return guest.cash - 50
    else return "Sorry you don't have enough cash to enter"
    end
  end

  def select_song(song)
    return song.name 
  end

  def fave_song(guest)
    return guest.fave_song
  end

def buy_a_beer(guest)
  if guest.cash > 10
    return guest.cash - 10
  # else return "Sorry you don't have enough cash to get more drunk"
  end
end

end