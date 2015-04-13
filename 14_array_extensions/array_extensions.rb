class Array
  #Сумма элементов массива
  def sum
    result=0
    self.each { |item| result = result + item }
    result
  end
  #Квадрат всех элементов массива
  def square
    self.map { |item| item**2 }
  end
  #Квадрат всех элементов массива (изменяем сам масив)
  def square!
    self.map! { |item| item**2 }
  end
end
