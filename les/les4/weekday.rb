time = Time.now
week_day = time.wday
puts time
puts week_day
if
	week_day == 0 || week_day == 6
	puts "можно и отдохнуть"
else
	puts "люблю свою работу"
end