(1..100).each do |current_number|
  if current_number % 3 == 0 
    if current_number % 5 == 0  
      output = 'fizzbuzz'
    else
      output = 'fizz'
    end
  elsif current_number % 5 == 0
    output = 'buzz'
  end

  puts "#{output || current_number}"
end
