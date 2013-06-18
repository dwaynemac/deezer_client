module Deezer
  # API Doc: http://developers.deezer.com/api/album
  class Artist < LogicalModel
    set_resource_url 'api.deezer.com/2.0', '/artist'
    force_ssl

    attribute :id         # The artist's Deezer id
    attribute :name       # The artist's name
    attribute :link       # The url of the artist on Deezer
    attribute :picture    # The url of the artist picture.
    attribute :nb_album   # The number of artist's albums
    attribute :nb_fan     # The number of artist's fans
    attribute :radio      # true if the artist has a smartradio

    # Picture URL
    # @param size [String] can be 'small', 'medium', 'big'.
    # @return [String]
    def picture(size = nil)
      size ? "#{@picture}?size=#{size}" : @picture
    end
  end
end