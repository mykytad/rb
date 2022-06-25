require_relative "human"


# Создадим трех людей
hmyr = Human.new('Гаврила', 'Петрович', 15)
kosoy = Human.new('Фёдор', 'Петрович', 45)
alibaba = Human.new('Василий', 'Алибабаевич', 88)

# Выводим на экран имена всех наших людей
puts hmyr.full_name
puts "Ему #{hmyr.age} - #{hmyr.old? ? "молодой" : "пожилой"}\n"
sleep 0.5
puts kosoy.full_name
puts "Ему #{kosoy.age} - #{kosoy.old? ? "молодой" : "пожилой"}\n"
sleep 0.5
puts alibaba.full_name
puts "Ему #{alibaba.age} - #{alibaba.old? ? "молодой" : "пожилой"}"
sleep 0.5