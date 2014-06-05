class Array
  
  def sum
    self.inject(0) { |sum, x| sum += x }
  end
  
  def square
    result = []
    self.each { |val| result << val * val }
    result
  end
  
  def square!
    self.each_with_index { |val, index| self[index] = val * val }
  end
  
end