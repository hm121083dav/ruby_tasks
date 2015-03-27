class Array
  def sum
    result=0
    self.each { |item| result = result + item }
    result
  end

  def square
    self.map { |item| item**2 }
  end

  def square!
    self.map! { |item| item**2 }
  end
end