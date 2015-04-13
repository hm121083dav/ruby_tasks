#Перевести слова в заглвные буквы кроме служебных
class Book

  #setter
  def title=(text)
    @title = text
  end

  #getter
  def title
    capitalize(@title)
  end

  #Перевод в заклавные буквы исключая артикли
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

