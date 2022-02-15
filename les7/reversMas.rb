# Записываем массив в переменную numbers и выводим его на экран
numbers = [1, 2, 3, 4, 5, 6, 7]
puts 'Исходный массив:'
puts numbers.to_s

# Создадим новый массив  куда будем класть элементы в обратном порядке
revers_numbers = []
for item in numbers do
# И добавляем каждый элемент в начало нового массива методом unshift (добавить в начало)
  revers_numbers.unshift(item)
end

# Осталось вывести полученный массив на экран
puts 'Новый массив, полученный из исходного:'
puts revers_numbers.to_s