foreheads_file = "data/foreheads.txt"
eyes_file = "data/eyes.txt"
noses_file = "data/noses.txt"
mouths_file = "data/mouths.txt"

if File.exist?(foreheads_file)
	f_foreheads = File.new(foreheads_file, "r:UTF-8")
	line_foreheads= f_foreheads.readlines
	f_foreheads.close
	puts line_foreheads.sample
else
	puts "Файл не найден"
end

if File.exist?(eyes_file)
	f_eyes = File.new(eyes_file, "r:UTF-8")
	line_eyes = f_eyes.readlines
	f_eyes.close
	puts line_eyes.sample
else
	puts "Файл не найден"
end

if File.exist?(noses_file)
	f_noses = File.new(noses_file, "r:UTF-8")
	line_noses = f_noses.readlines
	f_noses.close
	puts line_noses.sample
else
	puts "Файл не найден"
end

if File.exist?(mouths_file)
	f_mouths = File.new(mouths_file, "r:UTF-8")
	line_mouths= f_mouths.readlines
	f_mouths.close
	puts line_mouths.sample
else
	puts "Файл не найден"
end