require 'deezer_client/service_configuration'

module Deezer
  # API Doc: http://developers.deezer.com/api/album
  class Album < LogicalModel
    include DeezerClient::ServiceConfiguration

    set_resource_path '/album'

    attribute :id             # The album's Deezer id
    attribute :title          # The album's title
    attribute :link           # The url of the album on Deezer
    attribute :cover          # The url of the album's cover.
    attribute :label          # The album's label name
    attribute :duration       # The album's duration (seconds)
    attribute :fans           # The number of album's Fans
    attribute :rating         # The playlist's rate
    attribute :release_date   # The album's release date
    attribute :available

    belongs_to :artist, class: Deezer::Artist # initialized from API with : id, name, picture

    has_many :tracks

    belongs_to :genre, class: Deezer::Genre

    # Cover URL
    # @param size [String] can be 'small', 'medium', 'big'.
    # @return [String]
    def cover(size = nil)
      size ? "#{@cover}?size=#{size}" : @cover
    end
  end
end