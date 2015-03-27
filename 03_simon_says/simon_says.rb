#Выводит аргумент (введеное слово)
def echo(word)
  word
end

#Выводит аргумент большими буквами
def shout(word)
  word.upcase!
end

#Повторяет аргумент указанное число раз
def repeat(word, number=2 )
  ((word+' ') * number).chop
end

#Выводит указанное количество первых букв слова
def start_of_word(word, number)
  word[0..number-1]
end

#Выводит первое слово в предложении
def first_word(text)
  text.split(/\s/).first
end

# Превращает предложения в заголовки по правилам английского языка
# (все слова, кроме служебных, с большой буквы)
def titleize(text)
  result=''
  text.split(/\s+/).each do |word|
    if result=='' || word.length>4 || word=='kwai'
      word.capitalize!
    end
    result = result + word + ' '
  end
  result.chop
end