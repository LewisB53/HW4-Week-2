require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest.rb')

class TestGuest < Minitest::Test

  def test_can_create_guest
    guest = Guests.new("lewis")
   refute_nil(guest)
  end

end