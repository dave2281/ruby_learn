current_path = File.dirname(__FILE__)
time = Time.now
time_hours_min = time.strftime("%Y-%m-%d")
file = File.new(current_path + '/' + "dave" + '.txt', 'a:UTF-8')
file.puts("Hello from ruby")
file.close

