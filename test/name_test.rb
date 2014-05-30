$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'mongoid'
require 'mongoid-name'
require 'minitest/autorun'
require 'minitest/pride'

describe Mongoid::Name do
  before do
    @name = Mongoid::Name.new(%w(AJ Ostrow))
  end

  describe '#initialize' do
    it 'should be a string' do
      assert_equal 'AJ Ostrow', @name
    end

    it 'should have first name' do
      assert_equal 'AJ', @name.first
    end

    it 'should have middle name' do
      assert_nil nil, @name.middle
    end

    it 'should have last name' do
      assert_equal 'Ostrow', @name.last
    end
  end
end
