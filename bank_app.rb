require './customer.rb'
require './interface.rb'
CUSTOMER_FILE = "customers.csv"

# def check_file_exists
#   File.exists?(CUSTOMER_FILE)
#   # puts "Customer file exists"
# end

# def read_from_file
#   File.open(CUSTOMER_FILE, 'r').each_line do |line|
#     $last_id = line.split(',')[0]
#   end
# end

# if check_file_exists
#   read_from_file
# end

while true
  draw_menu
  answer = gets.chomp
  if answer == '1' # add customer
    puts "What is the customer's name?"
    customer_name = gets.chomp
    puts "What is the customer's address?"
    customer_address = gets.chomp
    puts "What is the customer's phone number?"
    customer_phone = gets.chomp
    puts "What is the customer's email?"
    customer_email = gets.chomp
    puts "Enter the initial deposit amount for the customer:"
    customer_balance = gets.chomp

    if File.zero?(CUSTOMER_FILE)
      customer_id = 1
    else
      customer_id = Customer.list.last['id'].to_i + 1
    end
    new_customer = Customer.new(customer_id, customer_name, customer_address, customer_phone, customer_email, customer_balance.to_f)
    new_customer.save
    draw_lines
    puts "New customer added and saved."
    draw_lines

  elsif answer == '2' # Remove customer
    

  elsif answer == '7' #finish
    break
  end
end
