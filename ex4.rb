puts "Hello"
def ask_name
  name = ""
  print "What is your name? : "
  name = gets.chomp

if name == ""
  puts "You didn't enter anything! Try again"
  ask_name
else
  puts "Hello #{name}"
end
end
ask_name
