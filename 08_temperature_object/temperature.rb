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

  #Создаем объект класса Temperature и передаем свой аргумент t его конструктору в виде хеша с ключом для цельсия
  # по сути непрямой конструктор
  def self.from_celsius t
    new(:c => t)
  end
  #Создаем объект класса Temperature и передаем свой аргумент t его конструктору в виде хеша с ключом для фарингейта
  # по сути непрямой конструктор
  def self.from_fahrenheit t
    new(:f => t)
  end

  # Возвращаем температуру в градусах Фаренгейта - по сути геттер
  def in_fahrenheit
    @fahrenheit
  end

  # Возвращаем температуру в градусах Цельсия - по сути геттер
  def in_celsius
    @celsius
  end


end

#По сути тотже функционал что и у родительского класса Temperature
# но конструктору передается не хеш, а  единственное числовое значение температуры
class Celsius < Temperature
  def initialize(t)
    super(:c => t)
  end
end

#По сути тотже функционал что и у родительского класса Temperature
# но конструктору передается не хеш, а  единственное числовое значение температуры
class Fahrenheit < Temperature
  def initialize(t)
    super(:f => t)
  end
end