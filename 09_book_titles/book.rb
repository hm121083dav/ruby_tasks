class Book

  def title=(text)
    @title = text
  end

  def title
    capitalize(@title)
  end

  def capitalize text
    result=''
    text.split(/\s+/).each do |word|
      if result=='' || (not ["the", "and", "a", "an", "in", "of"].include?(word))
        word.capitalize!
      end
      result = result + word + ' '
    end
    result.chop
  end

end

