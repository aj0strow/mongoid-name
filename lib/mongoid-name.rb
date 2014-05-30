module Mongoid
  class Name < String
    attr_reader :first, :middle, :last

    # Name.new('AJ', 'Ostrow')
    # Name.new('Alexander', 'Jacob', 'Ostrow')
    # Name.new(%w(AJ Ostrow))
    # Name.new(%w(Alexander Jacob Ostrow))
    def initialize(*args)
      args.flatten!
      @first, @last = args.shift, args.pop
      @middle = args.join(' ') if args.any?
      super(to_s)
    end

    def to_h
      { 'first' => first,
        'middle' => middle,
        'last' => last }
    end

    def to_a
      [ first, middle, last ].compact
    end

    def to_s
      to_a.join(' ')
    end

    # Mongoid conversions

    alias_method :mongoize, :to_a

    def self.demongoize(array)
      new(*array)
    end

    def self.mongoize(object)
      object.respond_to?(:mongoize) ? object.mongoize : object
    end

    def self.evolve(object)
      object.respond_to?(:mongoize) ? object.mongoize : object
    end
  end
end
