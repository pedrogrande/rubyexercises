# Here are the answers to the random number game
random_number = rand(1..10)

puts "Guess the number I'm thinking of: "
guess = gets.chomp.to_i

if random_number == guess
  puts "You guessed correctly!"
else
  puts "You guessed wrong. The number was #{random_number}"
end
