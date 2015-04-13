#Монитор производительности выполнения программы, среднее время выполнения одного блока
def measure(c=1)
  time_passed=0
  c.times do
    time_start = Time.now
    yield if block_given?
    time_passed += Time.now - time_start
  end
  time_passed / c
end




