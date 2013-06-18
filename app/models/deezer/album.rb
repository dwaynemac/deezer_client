module Deezer
  class Album < LogicalModel
    set_resource_url 'api.deezer.com/2.0', '/album'
    force_ssl

    attribute :id
    attribute :title
    attribute :link
    attribute :cover
    attribute :release_date

  end
end