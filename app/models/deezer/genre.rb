require 'deezer_client/service_configuration'

module Deezer
  # API Doc: http://developers.deezer.com/api/genre
  class Genre < LogicalModel
    include DeezerClient::ServiceConfiguration

    attribute :id
    attribute :name

    set_resource_path '/genre'
  end
end