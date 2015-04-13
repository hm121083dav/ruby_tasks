class Dictionary

  #Сеттер
  def entries=(hash)
    @entries = hash
  end

  #Геттер
  def entries
    if @entries.nil?
      @entries = {}
    else
      @entries
    end
  end

  #Добавить слово в словарь
  def add(item)
    #Проверяем  item или это хеш
    if item.class==Hash
        #Присоеденяем к нашему хешу
        entries.merge!(item)
    else
        #Если не массив заносим значение в ключ хеша,
        #а значению массива данного ключа присваиваем nil
        entries[item] = nil
    end
  end

  #Отсортировать по ключу
  def keywords
    entries.keys.sort
  end

  #Найти  ключ
  def include?(key)
    entries.keys.include?(key)
  end

  # Найти слова
  def find(keyword)
    result = {}
    #Выполняет блок для каждой пары
    entries.each_pair do |key, value|
      #Ищет приставку
      result[key] = value if key.start_with?(keyword)
    end
    result
  end

  #Расспечатать
  def printable
    #Преребераем массив (ключ-значение)
    result = entries.map do |item|
      #заносим в массив (item.first ключ - item.last значение)
       %Q{[#{item.first}] "#{item.last}"}
    end
    #Сортируем и присоеденяем перевод строки и выводим резултат поиска
    result.sort.join("\n")
  end

end