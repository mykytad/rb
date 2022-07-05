time = Time.now
string_time = time.strftime("%d.%m.%Y %H:%M:%S")


file = File.new("data/hello_file.txt", "a:UTF-8")
file.print(string_time + "\n")
file.puts("Привет, файл")
file.close
#file = File.new(current_path, "r:UTF-8")
#puts file