module MapmyindiaRuby
	class GeoAddr

    attr_reader :country, :city, :area, :PLZ, :street, :house_no, :POI,
      :phone, :lng, :lat, :type, :entries, :formatted_address

      def self.build(addrs)
        addrs.collect do |addr|
          GeoAddr.new(addr)
        end
      end

  end
end
