require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../songs.rb')

class TestSong < Minitest:: Test

  def test_can_create_song
    song = Songs.new("love me tender")
    refute_nil(song)
  end


end