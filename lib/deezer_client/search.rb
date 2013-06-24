module DeezerClient
  # Adds .search method
  module Search

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods

      def search(query)
        bkp_resource_path = @resource_path

        case bkp_resource_path
          when '/track'
            @resource_path = "/search"
          when '/album', '/artist', '/user'
            @resource_path = "/search#{bkp_resource_path}"
          else
            raise 'Cant use search with this resource'
        end

        res = self.all(q: query)

        @resource_path = bkp_resource_path

        return res
      end
    end

  end
end