class Temperature
  
  def initialize(options = {})
    # Won't make any sense if user can enter :f and :c for one instance
    raise "Can only enter one temperature" if options.length > 1
    @f, @c = options[:f], options[:c]
  end
  
  def in_fahrenheit
    @c ? Temperature.ctof(@c) : @f
  end
  
  def in_celsius
    @f ? Temperature.ftoc(@f) : @c
  end
  
  # Class methods
  def self.from_fahrenheit(degree)
    Temperature.new(:f => degree)
  end
  
  def self.from_celsius(degree)
    Temperature.new(:c => degree)
  end
  
  def self.ftoc(degree)
    (degree - 32) / 1.8
  end
  
  def self.ctof(degree)
    degree * 1.8 + 32
  end
end

class Celsius < Temperature
  def initialize(degree)
    @c = degree
  end
end

class Fahrenheit < Temperature
  def initialize(degree)
    @f = degree
  end
end
