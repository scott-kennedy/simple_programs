(1..100).each { |current_number|
  output = String.new
  output << 'fizz' if current_number % 3 == 0 
  output << 'buzz' if current_number % 5 == 0 

  output = current_number if output.empty?
  puts "#{output}"
}

