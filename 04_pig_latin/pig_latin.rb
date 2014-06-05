class String
  @@vowels = %w[a e i o u]
  
  def self.vowels
    @@vowels
  end
  
  def has_consonants?(first_n_letters)
    self.split("")[0..first_n_letters - 1].each do |letter|
      if @@vowels.include?(letter)
        return false
      end
    end
    true
  end
  
  def is_capitalized?
    self == self.capitalize ? true : false
  end
  
  def pig_latin
    result = ""
    
    if (self.has_consonants?(1) && self[1..2] == "qu") || 
      self.has_consonants?(3)
            
      result = self[3..-1] + self[0..2] + "ay"
    elsif (self[0..1] == "qu") || self.has_consonants?(2)
      result = self[2..-1] + self[0..1] + "ay"
    elsif self.has_consonants?(1)
      result = self[1..-1] + self[0] + "ay"
    else
      result = self + "ay"
    end
    
    self.is_capitalized? ? result.downcase.capitalize : result
  end
end

def translate(string)
  words = string.split(/\s/)
  pig_latin = []
  words.each { |word| pig_latin << word.pig_latin }
  pig_latin.join(" ")
end