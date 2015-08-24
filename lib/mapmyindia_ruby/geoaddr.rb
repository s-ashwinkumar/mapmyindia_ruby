module MapmyindiaRuby
	class GeoAddr

    attr_reader :country, :city, :area, :PLZ, :street, :house_no, :POI,
      :phone, :lng, :lat, :type, :entries, :formatted_address

    def self.build(addrs)
      addrs.collect do |addr|
        GeoAddr.new(addr)
      end
    end

    def initialize(attributes)
      @country = attributes["country"]
      @city = attributes["city"]
      @area = attributes["area"]
      @PLZ = attributes["PLZ"]
      @street = attributes["street"]
      @house_no = attributes["house_no"]
      @POI = attributes["POI"]
      @phone = attributes["phone"]
      @lng = attributes["lng"]
      @lat = attributes["lat"]
      @type = attributes["type"]
      @entries = attributes["entries"]
      @formatted_address = attributes["formatted_address"]
    end
  end
end
