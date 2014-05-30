require 'test_helper'

class Person
  include Mongoid::Document

  field :name, type: Mongoid::Name
end

describe Person do
  before do
    @person = Person.create(name: %w(AJ Ostrow))
  end

  describe 'persist' do
    it 'should save and fix' do
      @person.update(name: %w(Elijah Ostrow))
      assert_equal 'Elijah Ostrow', @person.reload.name
    end
  end

  describe 'query' do
    it 'should query whole name' do
      result = Person.where(name: %w(AJ Ostrow)).first
      assert_equal @person.name, result.name
    end

    it 'should query first name' do
      result = Person.where(name: /aj/i).first
      assert_equal @person.name, result.name
    end
  end
end
