require 'rest-client'
module MapmyindiaRuby
  class Base
  	attr_reader :url,:key

  	def initialize(key, url='https://api.mapmyindia.com/v3')
  		self.url = url
  		self.key = key
  	end
    
    def geocoding(query_string)
      params = { :lic_key => self.key,
        :q => query_string,
        :fun => 'geocode'
      }
      response = RestClient.get self.url,{ :params => params }
      GeoAddr.build(response)
    end

    def reverse_geocoding(lat,lng)
    end

    

  end
end
