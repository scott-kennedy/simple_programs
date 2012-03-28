guess_counts = []
guess_sum = 0

while true do
  number = rand(100) + 1
  count_guesses = 0

  puts "Do you want to play a game?  (y/n)"
  play = gets.strip
  break if play == 'n'

  puts "Guess a number between 1 and 100"

  while true do
    guess = gets.to_i
    count_guesses += 1

    if guess == number
      puts "Great job!  You got it in #{count_guesses} guesses!"
      guess_counts << count_guesses
      break
    elsif guess < number
      puts "Too low!"
    elsif guess > number
      puts "Too high!"
    end
  end
end

# guess_counts.each { |value| guess_sum += value }
# guess_average = guess_sum.to_f / guess_counts.size

class Array
  def sum
    self.inject(0) { |sum, value| sum += value }
  end

  def average
    sum.to_f / size
  end
end

guess_average = guess_counts.average

puts "Average number of guesses #{guess_average}"
