class Dictionary

  def entries=(hash)
    @entries = hash
  end

  def entries
    if @entries.nil?
      @entries = {}
    else
      @entries
    end
  end

  def add(item)
    if item.class==Hash
        entries.merge!(item)
    else
        entries[item] = nil
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(key)
    entries.keys.include?(key)
  end

  def find(keyword)
    result = {}
    entries.each_pair do |key, value|
      result[key] = value if key.start_with?(keyword)
    end
    result
  end

  def printable
    result = entries.map do |item|
      %Q{[#{item.first}] "#{item.last}"}
    end
    result.sort.join("\n")
  end

end