# encoding: utf-8

require 'rspec'
require 'chinese_cities/province'

module ChineseCities

  describe Province do
    before :all do
      @province = Province.find '北京市'
    end

    context '#cities' do
      it 'should have cities' do
        result = @province.cities
        result.should_not be_empty
      end
    end

    context '#city_names' do
      it 'should have city_names' do
        result = @province.city_names
        result.should_not be_empty
      end
    end

    context '.new' do
      it 'should be a private method' do
        lambda { Province.new '北京市' }.should raise_error
      end
    end

    context '.find' do
      it 'should find a province' do
        result = Province.find '天津市'
        result.should_not be_nil
      end

      it 'should not find a province' do
        result = Province.find '啊啊啊'
        result.should be_nil
      end
    end

    context '.all' do
      it 'should get all provinces' do
        result = Province.all
        result.should_not be_empty
      end
    end

    context '.all_names' do
      it 'should get all province names' do
        result = Province.all_names
        result.should_not be_empty
      end
    end

  end
end
