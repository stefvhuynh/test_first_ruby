class Fixnum
  @@ones_dict = { 1 => "one", 2 => "two", 3 => "three", 
    4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 
    9 => "nine" }
  @@teens_dict = { 10 => "ten", 11 => "eleven", 12 => "twelve", 
    13 => "thirteen", 14 => "fourteen", 15 => "fifteen",  
    16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 
    19 => "nineteen" }
  @@tens_dict = { 2 => "twenty", 3 => "thirty", 4 => "forty", 
    5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty",
    9 => "ninety" }
  
  def in_words
    num_string = self.to_s    
    self == 0 ? "zero" : get_words(num_string).strip
  end
  
  private
  
  def get_words(num_string)
    case
    when num_string.length == 0
      ""
    when num_string[0].to_i == 0
      "" + get_words(num_string[1..-1])
    when num_string.length == 1
      @@ones_dict[num_string.to_i]
    when num_string.length == 2 && num_string[0].to_i == 1
      @@teens_dict[num_string.to_i]
    when num_string.length == 2
      @@tens_dict[num_string[0].to_i] + " " + get_words(num_string[1..-1])
    when num_string.length == 3
      @@ones_dict[num_string[0].to_i] + " hundred " + get_words(num_string[1..-1])
    when num_string.length == 4
      @@ones_dict[num_string[0].to_i] + " thousand " + get_words(num_string[1..-1])
    when num_string.length == 5 && num_string[0].to_i == 1
      @@teens_dict[num_string[0..1].to_i] + " thousand " + get_words(num_string[2..-1])
    when num_string.length == 5
      @@tens_dict[num_string[0].to_i] + " " + get_words(num_string[1..-1])
    when num_string.length == 6
      @@ones_dict[num_string[0].to_i] + " hundred " + get_words(num_string[1..-1])  
    end
  end
  
end


