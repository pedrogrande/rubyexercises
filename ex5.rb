class Customer
  CUSTOMER_FILE = "customers.csv"

  def initialize(name, address, phone, email, balance)
    @id = Customer.find_number_of_customers + 1
    @name = name
    @address = address
    @phone = phone
    @email = email
    @balance = balance
    @customer = {"id" => @id, "name" => @address, "phone" => @phone, "email" => @email, "balance" => @balance}
    puts
  end

  def print_customer_info
    # print customer info to screen
    puts "Customer details"
    puts "Name: #{@name}"
    puts "Email: #{@email}"
  end

  def save_to_file
    open_file = open(CUSTOMER_FILE, 'a')
    open_file.write(@id.to_s + ',' + @name)
    open_file.write("\n")
    open_file.close
    puts "Customer has been added to file"
  end

  def make_deposit
  end

  def make_withdrawal
  end

  def edit_customer_details
  end

  def find(id)
    File.each_line(CUSTOMER_FILE) do |li|
      if (li['"id"=>#{id}'])
        @customer = Customer.new(li)
      end
    end
  end

  def self.find_number_of_customers
    %x{wc -l #{CUSTOMER_FILE}}.split.first.to_i
  end

  def self.find_id_of_last_customer

  end
end

def draw_lines
  puts "=" * 10
end

def draw_menu
  puts "Welcome to the Bank"
  draw_lines
  Customer.find_number_of_customers
  puts "There are #{Customer.find_number_of_customers} customers."
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

    new_customer = Customer.new(customer_name, customer_address, customer_phone, customer_email, customer_balance.to_f)
    new_customer.print_customer_info
    new_customer.save_to_file

  elsif answer == '2' # Remove customer


  elsif answer == '7' #finish
    break
  end
end
