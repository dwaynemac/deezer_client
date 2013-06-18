module Deezer
  class Artist < LogicalModel
    set_resource_url 'api.deezer.com/2.0', '/artist'
    force_ssl

    attribute :id
    attribute :name
    attribute :link
    attribute :picture
    attribute :nb_album
    attribute :nb_fan
    attribute :radio

  end
end