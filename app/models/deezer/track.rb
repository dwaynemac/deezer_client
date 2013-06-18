require 'deezer_client/service_configuration'
module Deezer
  # Track on Deezer.
  # API documentation: http://developers.deezer.com/api/track
  class Track < LogicalModel
    include DeezerClient::ServiceConfiguration

    set_resource_path '/track'

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

    # album object initialized with: id, title, link, cover, release_date
    belongs_to :album,  class: Deezer::Album

    # artist object initialized with: id, name, link, picture, nb_album, nb_fan, radio
    belongs_to :artist, class: Deezer::Artist

  end
end