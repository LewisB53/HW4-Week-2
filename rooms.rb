class  Rooms
  attr_reader :room_number

  def initialize(room_number)
    @room_number = room_number
    @song_array =[]
    @people_array =[]
    @room_array = []
  end

  def can_create_two_rooms
  
    @room_array << @room_number
    
  return @room_array
  end


  def add_song(song)
  @song_array << song
  end

  def number_of_songs
    return @song_array.count
  end

  

end