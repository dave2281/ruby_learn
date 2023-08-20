output = `rm -v vacancies.txt`
file = File.open("output.txt", "w")
file.write(output)
file.close
