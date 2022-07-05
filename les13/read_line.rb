current_path = File.dirname(__FILE__)
file_path = "data/file.txt"

if File.exist?(file_path)
  f = File.new(file_path, "r:UTF-8")
  line = f.readlines
  f.close
  puts line.sample
else
	puts "Файл не найден"
end