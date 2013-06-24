require 'deezer_client/search'
require 'deezer_client/service_configuration'

module Deezer
  # API Doc: http://developers.deezer.com/api/user
  class User < LogicalModel
    include DeezerClient::ServiceConfiguration
    include DeezerClient::Search

    set_resource_path '/user'

    attribute :id                # The user's Deezer ID
    attribute :name              # The user's Deezer nickname
    attribute :lastname
    attribute :firstname
    attribute :email
    attribute :birthday
    attribute :inscription_date  # The user's inscription date
    attribute :gender            # The user's gender : F or M
    attribute :link              # The url of the profil for the user on Deezer
    attribute :country
    attribute :lang
    attribute :picture

    # Picture URL
    # @param size [String] can be 'small', 'medium', 'big'.
    # @return [String]
    def picture(size = nil)
      size ? "#{@picture}?size=#{size}" : @picture
    end
  end
end

