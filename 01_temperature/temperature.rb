#Для перевода температуры из шкалы Фаренгейта в шкалу Цельсия
# нужно от исходного числа отнять 32 и умножить результат на 5/9

def ftoc(myFr)
  (myFr-32)*5.0/9.0
end

#Для перевода температуры из шкалы Цельсия в шкалу Фаренгейта
#нужно умножить исходное число на 9/5 и прибавить 32

def ctof(myCl)
 (myCl*(9.0/5.0))+32
end