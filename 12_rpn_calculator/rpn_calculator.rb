class RPNCalculator < Array
  attr_reader :value
  
  def initialize
    super
    @value = 0
  end
  
  def plus
    procedure(:+)
  end
  
  def minus
    procedure(:-) 
  end
  
  def times
    procedure(:*)
  end
  
  def divide
    procedure(:/)
  end
  
  def tokens(string)
    operators = %w[+ - * /]
    string_arr = string.split(/\s/)
    result = []
    
    string_arr.each { |token| operators.include?(token) ? result << token.to_sym : result << token.to_i }
    result
  end
  
  def evaluate(string)
    tokens_arr = tokens(string)    
    tokens_arr.each do |token|
      
      case token
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        self.push(token)
      end
    end
    
    @value
  end
  
  # Helper methods
  private
  
  def procedure(operation)
    raise "calculator is empty" if self.length == 0
    
    second = self.pop
    first = self.pop
    
    case operation
    when :+
      @value = first + second
    when :-
      @value = first - second
    when :*
      @value = first * second
    when :/
      @value = first / second.to_f
    end
    
    self.push(@value)
  end
end


