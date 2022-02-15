temperatura = ARGV[0]
if temperatura == nil
	puts "Какая сейчас температура?"
	temperatura = STDIN.gets.to_i
else
	temperatura = temperatura.to_i
end

season = ARGV[1]
if season == nil
	puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
	season = STDIN.gets.to_i
else
	season = season.to_i	
end

#дальше проверть условия
#Летом они поют при температуре от 15 до 35 градусов.
if season == 1	
	if (temperatura >=15 && temperatura <= 35)
		puts "Скорее идите в парк, соловьи поют!"
	else
		puts "Сейчас соловьи молчат, греются или прохлаждаются"
	end
else
	if (temperatura >= 22 && temperatura <= 30)
		puts "Скорее идите в парк, соловьи поют!"
	else
		puts "Сейчас соловьи молчат, греются или прохлаждаются"
	end
end