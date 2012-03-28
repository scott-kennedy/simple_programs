(1..100).each { |current_number|
  by_three = 'fizz' if current_number % 3 == 0
  by_five = 'buzz' if current_number % 5 == 0

  puts "#{current_number unless by_three || by_five}#{by_three}#{by_five}"
}
