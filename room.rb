class Room

  attr_reader :genre, :guests, :songs

  def initialize(genre, guests, playlist)

    @genre = genre
    @guests = guests
    @playlist = playlist

  end

  def guest_in(check_in_guest)
    @guests << check_in_guest
  end

  def guest_out(check_out_guest)
    @guests.delete(check_out_guest)
  end



end


  #
  # def room_enter(guest)
  # @room_guests << guest
  # end
  #
  # def available()
  #   if .room_guests.size = 0
  #     return true
  #   end
  # end
  #
  # def room_guests()
  # @room.room_guests
  # end

  # def check_in(guest)
  #   if room_guests.include? == guest
  #   p guest[:name]}" " guest:[surname] " is in " room[:genre] "room"
  #   end
  # end
  #
  #
