require 'protected_attributes'
module Deezer
  class Track < LogicalModel

    set_resource_url 'api.deezer.com/2.0', '/track'
    force_ssl

    attribute :id
    attribute :title
    attribute :link

  end
end