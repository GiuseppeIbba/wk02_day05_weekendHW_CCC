class Room

  attr_reader :genre, :guests, :playlist

  def initialize(genre, guests, playlist)

    @genre = genre
    @guests = guests || []
    @playlist = playlist || []
  end

  def available()
    if @guests.length == nil
    end
  end


  def guest_in(check_in_guest)
    @guests << check_in_guest
  end











  #
  # def guest_in(check_in_guest)
  #   @guests << check_in_guest
  # end
  #
  # def guest_out(check_out_guest)
  #   @guests.delete(check_out_guest)
  # end



end


  #
  # def room_enter(guest)
  # @room_guests << guest
  # end
  #

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
