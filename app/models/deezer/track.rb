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

    belongs_to :album,  class: Deezer::Album
    belongs_to :artist, class: Deezer::Artist

  end
end