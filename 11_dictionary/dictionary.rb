class String
  def starts_with?(letters)
    return true if letters == self[0..letters.length - 1]
    false
  end
end

class Dictionary
  attr_accessor :entries
  
  def initialize
    @entries = {}
  end
  
  def add(word_def)
    if word_def.class == Hash
      @entries[word_def.keys[0]] = word_def[word_def.keys[0]]
    else
      @entries[word_def] = nil
    end
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(key)
    # @entries.keys.include?(key)
    @entries.keys.each { |w| return true if w == key }
    false
  end
  
  def find(query)
    results = {}
    @entries.keys.each do |key|
      results[key] = @entries[key] if key.starts_with?(query)
    end
    results
  end
  
  def printable
    result = ""
    sorted_keys = @entries.keys.sort
    sorted_keys.each { |key| result << "[#{key}] \"#{@entries[key]}\"\n" }
    result.chomp
  end
end


