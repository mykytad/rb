current_path = File.dirname(__FILE__)
file_name = ARGV[0]
if file_name == nil
  abort 'Укажите имя файла в качестве аргумента программы'
end
unless File.exist?(file_name)
  abort 'Файл не найден!'
end
file = File.new(file_name, "r:UTF-8")
lines = file.readlines
file.close

puts "Открыт файл: " + file_name

empty_lines_counter = 0

last_lines = []

lines.each_with_index do |line, index|
  # Если строка состоит из одного символа "\n", увеличиваем счетчик пустых
  # строк.
  if line == "\n"
    empty_lines_counter += 1
  end
  if lines.size - index <= 5
    last_lines << line
  end
end

puts 
puts 'Всего строк: ' + lines.length.to_s
puts 'Пустых строк: ' + empty_lines_counter.to_s
puts 'Последние 5 строк файла: '
puts

for line in last_lines
  puts line
end