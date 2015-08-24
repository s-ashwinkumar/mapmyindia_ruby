require 'httparty'



module MapmyindiaRuby
  class Base
    include HTTParty
    format :json
    default_params :format => 'json'
  	attr_reader :key

  	def initialize(key, url='https://api.mapmyindia.com/v3')
      self.class.base_uri url
  		@key = key
  	end
    
    def geocoding(query_string)
      params = { :lic_key => @key,
        :q => query_string,
        :fun => 'geocode'
      }
      response = self.class.get("",{ :query => params })
      GeoAddr.build(response)
    end

    def reverse_geocoding(lat,lng)
      params = { :lic_key => @key,
        :lat => lat,
        :lng => lng,
        :fun => 'rev_geocode'
      }
      response = self.class.get("",{ :query => params })
      GeoAddr.build(response)
    end

    def distance(params)
      params.merge!({ :lic_key => @key,
        :fun => 'star_dists'
      })
      response = self.class.get("",{ :query => params })
      JSON.parse(response.body)
    end

    def map_tile_image(params, path)
      params.merge!({ :lic_key => @key,
        :fun => 'still_map'
      })     
      response = self.class.get("",{ :query => params })
      File.open(path,'wb'){|f| f.write(response.body)}
    end

  end
end
