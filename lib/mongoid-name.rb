module Mongoid
  class Name < String
    attr_accessor :first, :middle, :last

    # Name.new('AJ', 'Ostrow')
    # Name.new('Alexander', 'Jacob', 'Ostrow')
    # Name.new(%w(AJ Ostrow))
    # Name.new(%w(Alexander Jacob Ostrow))
    def initialize(*args)
      args.flatten!
      super(args.compact.join(' '))
      @first, @last = args.shift, args.pop
      @middle = args.join(' ') if args.any?
    end
  end
end
