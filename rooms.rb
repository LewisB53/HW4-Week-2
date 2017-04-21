class  Rooms
  attr_reader :room_number
  attr_reader :guest_array
  def initialize(room_number)
    @room_number = room_number
    @song_array =[]
    @guest_array =[]
    @room_array = []
  end

  def can_create_two_rooms
    @room_array << @room_number  
    return @room_array
  end

  def add_guest(guest)
    @guest_array << guest
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
  end

  def number_of_songs
    return @song_array.count
  end



end