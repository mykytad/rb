foreheads = []
eyes = []
mouths = []
noses = []

if File.exist?('./foreheads.txt') # проверяем есть ли файл со лбами
  f = File.new('./foreheads.txt', 'r:UTF-8') # открываем файл, явно указывая его кодировку
  foreheads = f.readlines # читаем все строки в массив
  f.close # закрываем файл
else
  puts 'Лбы не найдены'
end

if File.exist?('./eyes.txt') # проверяем есть ли файл со глазами
  f = File.new('./eyes.txt', 'r:UTF-8') # открываем файл, явно указывая его кодировку
  eyes = f.readlines # читаем все строки в массив
  f.close # закрываем файл
else
  puts 'Глаза не найдены'
end

if File.exist?('./mouths.txt') # проверяем есть ли файл со рьами
  f = File.new('./mouths.txt', 'r:UTF-8') # открываем файл, явно указывая его кодировку
  mouths = f.readlines # читаем все строки в массив
  f.close # закрываем файл
else
  puts 'Рты не найдены'
end

if File.exist?('./noses.txt') # проверяем есть ли файл со носами
  f = File.new('./noses.txt', 'r:UTF-8') # открываем файл, явно указывая его кодировку
  noses = f.readlines # читаем все строки в массив
  f.close # закрываем файл
else
  puts 'Носы не найдены'
end

time = Time.now
filename = "face_.txt"
file = File.new(filename, "a:UTF-8")
file.puts(time.strftime("%d.%m.%Y %H:%M:%S"))
file.puts("")
file.puts(foreheads.sample)
file.puts(eyes.sample)
file.puts(noses.sample)
file.puts(mouths.sample)
file.puts("")
file.close