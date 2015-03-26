#Прибавляем два числа
def add(a, b)
  a + b
end

#Вычитаем два числа
def subtract(a, b)
  a - b
end

#Вычисление сумму элементов массива
def sum(myArray)
  result=0
  myArray.each { |item| result=result+item }
  result
end

#Вычисление произведения элементов массива
def multiply(myArray)
  result=1
  myArray.each { |item| result=result*item }
  result
end

#Вычисление степени числа
def power(a, b)
  a**b
end

#Факториал числа
def factorial(n)
  if n==0
    1
  else
    n*factorial(n-1)
  end
end




