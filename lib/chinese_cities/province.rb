module ChineseCities
  class Province
    attr_accessor :name
    
    def initialize name
      @name = name
    end

    def cities
      city_names.map do |city|
        City.find city 
      end
    end

    def city_names
      DATABASE.find do |province|
        province.first == name
      end.last
    end

    class << self

      private :new

      def find name
        return nil unless all_names.include? name
        new name
      end

      def all_names
        DATABASE.map do |province|
          province.first
        end
      end

      def all
        all_names.map do |province|
          new province
        end
      end
    end

  end
end
