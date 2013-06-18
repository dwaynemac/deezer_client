module DeezerClient
  module ServiceConfiguration
    def self.included(base)
      base.send('use_hydra', Deezer::HYDRA)
      base.send('force_ssl')
      base.send('set_resource_host', 'api.deezer.com/2.0')
      base.send('configure_index_response', {collection: 'data', total: 'total'})
    end
  end
end