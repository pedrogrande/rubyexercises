# Here are the answers to the random number game
random_number = rand(1..10)

puts "Guess the number I'm thinking of: "
guess = gets.chomp.to_i

if random_number == guess
  puts "You guessed correctly!"
else
  puts "You guessed wrong. The number was #{random_number}"
end

# this is a change i want to see in my Github repo
# this is a new line of code!
# This is going to be a demo of pull requests
