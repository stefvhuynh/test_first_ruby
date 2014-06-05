class Book
  attr_accessor :title
  
  def title=(title)
    little_words = %w[and but or nor in on up above under the of a an to]
    words = title.split(/\s/)
    words.each { |word| word.capitalize! unless little_words.include?(word) }
    words[0].capitalize!
    @title = words.join(" ")
  end
end