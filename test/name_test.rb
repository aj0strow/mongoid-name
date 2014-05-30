require 'test_helper'

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

  describe '#mongoize' do
    it 'should store the name as an array' do
      assert_equal %w(AJ Ostrow), @name.mongoize
    end
  end

  describe '::demongoize' do
    it 'should create a name object' do
      assert_equal @name, Mongoid::Name.demongoize(%w(AJ Ostrow))
    end
  end

  describe '::mongoize' do
    it 'should convert to string array' do
      assert_equal %w(AJ Ostrow), Mongoid::Name.mongoize(@name)
    end
  end

  describe '::evolve' do
    it 'should convert to string array' do
      assert_equal %w(AJ Ostrow), Mongoid::Name.evolve(@name)
    end
  end
end
