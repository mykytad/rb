require "pony"
require "io/console"

my_mail = "mykytadynnik@gmail.com"
puts "Введтие пароль от вашей почты #{my_mail}"
password = STDIN.noecho(&:gets).chomp

puts "\nКому хотите отправить письмо?"
send_to = STDIN.gets.chomp #ponedilokvaleria@gmail.com

puts "\nВведите тему письма"
subject = STDIN.gets.chomp

puts "\nВвкдите текст письма"
body = STDIN.gets.chomp

Pony.mail(
	:subject => subject,
	:body => body,
	:to => send_to,
	:from => my_mail,

	via: :smtp,
	via_options: {
   		address: 'smtp.gmail.com',
   		port: '587',
   		enable_starttls_auto: true,
   		user_name: my_mail,
   		password: password,
   		authentication: :plain,
 	}
)

puts 'Письмо отправлено!'