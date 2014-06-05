def reverser
  words = yield.split(/\s/)
  reversed =[]
  
  words.each { |word| reversed << word.split("").reverse.join("") }
  reversed.join(" ")
end

def adder(n = 1)
  yield + n
end

def repeater(n = 1)
  n.times { yield }
end