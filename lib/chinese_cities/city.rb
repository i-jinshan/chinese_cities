module ChineseCities
  class City
    attr_accessor :name

    def initialize name
      @name = name
    end

    def province
      Province.find province_name
    end

    def province_name
      DATABASE.find do |province|
        province.last.include? self.name
      end.first
    end

    class << self

      private :new

      def find name
        return nil unless all_names.include? name
        new name
      end

      def all_names
        DATABASE.map do |province|
          province.last
        end.flatten
      end

      def all
        all_names.map do |city|
          new city 
        end
      end
    end

  end
end
