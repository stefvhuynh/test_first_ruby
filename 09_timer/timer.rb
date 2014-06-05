class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds, @minutes, @hours = 0, 0 ,0
  end
  
  def time_string
    # Assign minutes and hours, taking advantage of integer division
    @minutes = @seconds / 60
    @hours = @minutes / 60
    
    # Reassign seconds and minutes with modulo
    @seconds = @seconds % 60
    @minutes = @minutes % 60
    
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
  end
  
  def padded(x)
    x.to_s.length < 2 ? "0" + x.to_s : x.to_s
  end
end