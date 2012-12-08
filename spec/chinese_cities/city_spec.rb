# encoding: utf-8

require 'rspec'
require 'chinese_cities/city'

module ChineseCities

  describe City do
    before :all do
      @city = City.find '西城区'
    end

    context '#province' do
      it 'should have province' do
        result = @city.province
        result.should_not be_nil
      end
    end

    context '#province_name' do
      it 'should have province_name' do
        result = @city.province_name
        result.should_not be_nil
      end
    end

    context '.new' do
      it 'should be a private method' do
        lambda { City.new '西城区' }.should raise_error
      end
    end

    context '.find' do
      it 'should find a city' do
        result = City.find '西城区'
        result.should_not be_nil
      end

      it 'should not find a city' do
        result = City.find '啊啊啊'
        result.should be_nil
      end
    end

    context '.all' do
      it 'should get all cities' do
        result = City.all
        result.should_not be_empty
      end
    end

    context '.all_names' do
      it 'should get all city names' do
        result = City.all_names
        result.should_not be_empty
      end
    end

  end
end
