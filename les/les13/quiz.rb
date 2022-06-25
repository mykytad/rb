current_path = File.dirname(__FILE__)
questions_path = "data/questions.txt"
answers_path = "data/answers.txt"
unless File.exist?(answers_path) && File.exist?(questions_path)
  abort 'Один из файлов не найден!'
end
questions_file = File.new(questions_path)
questions = questions_file.readlines
questions_file.close

answers_file = File.new(answers_path)
answers = answers_file.readlines
answers_file.close

correct_answers = 0
# Сделаем также переменную, в которой будем хранить номер текущего вопроса.
current_index = 0 
puts "Мини-викторина. Ответьте на  вопросы."

while current_index < questions.size
	puts "\n" + questions[current_index]
	user_answer = STDIN.gets.chomp # Спрашиваем у пользователя ответ
	correct_answer = answers[current_index].chomp
	if user_answer == correct_answer
		puts "Верно!!!"
		correct_answers += 1
	else
		puts "\nНе верно (((\nПравильный ответ: " + correct_answer
	end
	current_index += 1
end
# Результат
puts "\nПравильных ответов: #{correct_answers} из #{questions.size}"