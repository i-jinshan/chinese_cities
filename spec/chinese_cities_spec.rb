# encoding: utf-8
 
require 'rspec'
require 'chinese_cities'

describe ChineseCities do
  context '.search' do
    it 'should have result' do
      result = ChineseCities.search '京'
      result[:provinces].should_not be_empty
      result[:cities].should_not be_empty
    end

    it 'should have no result' do
      result = ChineseCities.search '啊'
      result[:provinces].should be_empty
      result[:cities].should be_empty
    end
  end
end
