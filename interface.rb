def draw_lines
  puts "=" * 10
end

def draw_menu
  puts "Welcome to the Bank"
  draw_lines
  # Customer.find_number_of_customers
  # puts "There are #{Customer.find_number_of_customers} customers."
  puts "What would you like to today?"
  draw_lines
  puts "1. Add customer"
  puts "2. Remove customer"
  puts "3. Edit customer"
  puts "4. Make a deposit"
  puts "5. Make a withdrawal"
  puts "6. Display customer details"
  puts "7. Exit"
  draw_lines
end
