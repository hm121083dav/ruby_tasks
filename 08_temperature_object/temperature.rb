class Temperature

  #Конструктор
  def initialize(arguments)

    if arguments[:c]
      @celsius=arguments[:c]
    else
      @celsius=ftoc(arguments[:f])
    end

    if arguments[:f]
      @fahrenheit=arguments[:f]
    else
      @fahrenheit=ctof(arguments[:c])
    end

  end

  #Переводим градусы Фаренгейта в градусы Цельсия
  def ftoc(f)
    (f-32.0)*5.0/9.0
  end

  #Переводим градусы Цельсия в градусы Фаренгейта
  def ctof(c)
    c*9.0/5.0+32
  end

  def self.from_celsius t
    new(:c => t)
  end

  def self.from_fahrenheit t
    new(:f => t)
  end

  # Возвращаем температуру в градусах Фаренгейта
  def in_fahrenheit
    @fahrenheit
  end

  # Возвращаем температуру в градусах Цельсия
  def in_celsius
    @celsius
  end


end

class Celsius < Temperature
  def initialize(t)
    super(:c => t)
  end
end


class Fahrenheit < Temperature
  def initialize(t)
    super(:f => t)
  end
end