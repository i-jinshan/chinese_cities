# encoding: utf-8
 
require "chinese_cities/version"

module ChineseCities
  autoload :DATABASE, 'chinese_cities/database'
  autoload :Province, 'chinese_cities/province'
  autoload :City, 'chinese_cities/city'

  def self.search name
    hash = Hash.new

    hash[:provinces] = Province.all_names.find_all do |province|
                         province.include? name
                       end

    hash[:cities] = City.all_names.find_all do |city|
                      city.include? name
                    end

    hash
  end

end
