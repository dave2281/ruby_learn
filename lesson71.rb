email = 'dava.bigboy@gmail.com'
email_regexp = /[a-z0-9\.]+\@[a-z0-9]+\.[a-z]+/

if email.match(email_regexp)
  puts 'Cool'
else
  puts 'bad'
end
