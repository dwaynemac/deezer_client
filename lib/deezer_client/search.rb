module DeezerClient
  # Adds .search method
  module Search

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods

      # @param [String] query
      # @param [Proc] response_manager_block. Will receive result collection
      def async_search(query,&response_manager_block)
        new_path = case @resource_path
          when '/track'
            "/search"
          when '/album', '/artist', '/user'
            "/search#{@resource_path}"
          else
            raise 'Cant use search with this resource'
        end

        do_with_resource_path(new_path) do
          self.async_all(q: query){ |collection| response_manager_block.call(collection) }
        end
      end

      # @param [String] query
      # @return [Array<self>]
      def search(query)
        result = nil
        async_search(query){|collection| result = collection }
        hydra.run
        return result
      end

    end
  end
end