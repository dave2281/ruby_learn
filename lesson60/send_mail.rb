require "pony"

# my_mail = ""

# p 'pass'
# pass = STDIN.gets.chomp

# p 'Кому отправить?'
# send_to = STDIN.gets.chomp

# p 'Что написать в письме?'
# body = STDIN.gets.chomp

Pony.mail(
  {
    :subject => 'Hello from ruby',
    :body => 'bukashka',
    :to => '',
    :from => "",

    :via => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => '',
      :password             => '',
      :authentication       => :plain
    }
  }
)

puts "Письмо успешно отправлено!"
