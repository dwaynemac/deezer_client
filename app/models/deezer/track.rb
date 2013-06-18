require 'protected_attributes'
module Deezer
  # Track on Deezer.
  # API documentation: http://developers.deezer.com/api/track
  class Track < LogicalModel

    set_resource_url 'api.deezer.com/2.0', '/track'
    force_ssl

    attribute :id             # The track's Deezer id
    attribute :readable       # true if the track is readable in the player for the current user
    attribute :title          # The track's title
    attribute :link           # The url of the track on Deezer
    attribute :duration       # The track's duration in seconds
    attribute :track_position # The position of the track in its album
    attribute :disk_number    # The track's album's disk number
    attribute :rank           # The track's Deezer rank
    attribute :release_date   # The track's release date
    attribute :preview        # The url of track's preview file. This file contains the first 30 seconds of the track
    attribute :artist         # artist object containing : id, name, link, picture, nb_album, nb_fan, radio
    attribute :album          # album object containing : id, title, link, cover, release_date

    def album
      Album.new(@album)
    end

    def artist
      Artist.new(@artist)
    end

  end
end