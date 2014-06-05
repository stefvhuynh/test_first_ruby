def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ((string + " ") * times).strip
end

def start_of_word(string, n)
  string[0..(n - 1)]
end

def first_word(string)
  string.split(/\s/)[0]
end

def titleize(string)
  little_words = %w[a an the at by for in of on to up and as but it or nor over]
                    
  string_arr = string.split(/\s/)
  string_arr.each { |word| word.capitalize! unless little_words.include?(word) }
  
  string_arr[0].capitalize!
  string_arr.join(" ")
end


