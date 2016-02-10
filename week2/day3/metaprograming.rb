class Dummy
	def method_missing(m, *args, &block)
		puts "there is no method #{m} here --- please try again"
	end
end
Dummy.new.pepepep




class MagicObject
  def initialize
    @data = {}
  end

  def method_missing(name, *args, &block)
    if args.size > 0
      @data[name] = args.first
    else
      @data[name]
    end
  end
end

m = MagicObject.new
m.thing 2
puts m.thing # => 2