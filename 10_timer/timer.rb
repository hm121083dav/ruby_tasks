#Таймер
class Timer

  # Конструктор
  def initialize
    @seconds = 0
  end

  # Setter
  def seconds=(value)
    @seconds = value
  end

  # Getter
  def seconds
    @seconds
  end

  #Перевод времен в заданный формат
  def time_string
    hours = @seconds/3600 #полных часов во времени в секундах, переданном таймеру
    minutes = (@seconds%3600)/60 #полных минут во времени в секундах, переданном таймеру
    secunds = (@seconds%3600)%60 #оставшихся секунд во времени в секундах, переданном таймеру
    padded(hours) + ":" + padded(minutes) + ":" + padded(secunds)
  end

  #Если число меньше 10 добавить впереди 0
  def padded value
    if value<10
      "0" + value.to_s
    else
      value.to_s
    end
  end
end
