class Dictionary

  attr_accessor :entries

  def initialize(hash={})
    @entries = hash
  end

  def include?(keyword)
    @entries.has_key?(keyword)
  end

  def find(word)
    matches = {}
    @entries.keys.each do | keyword |
      if keyword.start_with?(word)
        matches[keyword] = @entries[keyword]
      end
    end
    return matches
  end

  def add(word_or_worddef)
    if word_or_worddef.is_a?(String)
      @entries[word_or_worddef] = nil
    else
      word_or_worddef.each do | keyword, definition |
        @entries[keyword] = definition
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def printable
    output = ''
    keywords.each do |keyword|
      output += "[#{keyword}] \"#{@entries[keyword]}\"\n"
    end
    output.rstrip
  end
  
end
