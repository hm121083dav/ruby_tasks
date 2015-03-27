#Реверс предложений
def reverser
  if block_given?
    result = ''
    yield.split(/\s+/).each do |word|
      result = result + word.reverse + ' '
    end
    result.chop
  end
end

#Добавление 
def adder(number = 1)
  if block_given?
    yield + number
  end
end

#Повторитель с заданным временем
def repeater(number = 1)
  if block_given?
    number.times do
      yield
    end
  end
end
