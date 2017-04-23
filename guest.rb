class Guest
  attr_reader :name
  attr_accessor :cash
  attr_reader :fave_song

  def initialize(name,cash,fave_song)
    @name = name
    @cash = cash
    @fave_song = fave_song
  end



end