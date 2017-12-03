class Playlist

  attr_reader :songs

  def initialize(songs)

    @songs = songs || []
  end

  #
  # def add_song(title, author)
  #  selected_songs = {
  #    title: "Blackened", author: "Metallica"
  #  }
  #  @songs.push(selected_song)
  #
  #
  #   end
end


# def add_book(new_book_title)
#   new_book = {
#     title: new_book_title,
#     rental_details: {
#       student_name: "",
#       date: ""
#       }
#     }
#   @books.push(new_book)
