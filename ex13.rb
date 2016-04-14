# Customer class
class Customer

    def initialize(customer)
        @customer = customer
    end

    def print_customer_details()
        puts "=" * 15
        puts "Customer details: "
        puts "Name: #{@customer['name']}"
        puts "Starsign: #{@customer['starsign']}"
        puts "Age: #{@customer['age']}"
        puts "=" * 15
    end

    def put_customer_name(new_name)
        @customer['name'] = new_name
    end

    def get_customer_name()
        return @customer['name']
    end
end

# -------------------------------------------------------------------------------------------------------------
# Input customer data, this could come from anywhere, we declare here for simplicity
# Note that this area of the code restricts use to these specific instances of class Customer

# first get individual customers
pedro = Customer.new({ "name" => "Pedro", "starsign" => "Leo", "age" => 42 })
john = Customer.new({ "name" => "John", "starsign" => "Taurus", "age" => 22 })

# create new customers array to store customer objects
customers = Array.new

# push created customer into array stack
customers.push(pedro)
customers.push(john)

# -------------------------------------------------------------------------------------------------------------
# Print all customers to the screen

puts "Your customers"
puts "*" * 15
customers.each do |customer|
    customer.print_customer_details()
end

# -------------------------------------------------------------------------------------------------------------
# Ask if the user would like to update customer name details

puts "Would you like to enter a new name (y - yes, n - no) : "
answer = gets.chomp

# Run update customer details function if user answered yes

if (answer == 'y')
    # find out which customer is to be updated
    puts "Which customer would you like to update?"
    # LOOP HERE
    indexLoop = 0
    while indexLoop < customers.length;
        # cycle through customer indexes to give user choice of customer to update by index
        puts "To change " + customers[indexLoop].get_customer_name() + ", enter " + customers.index(customers[indexLoop]).to_s
        indexLoop += 1
    end
    # get choice from user customer
    choice = gets.chomp
        # LOOP HERE
        # cycle through customers
    indexLoop = 0
    while indexLoop < customers.length;
        if (choice == customers.index(customers[indexLoop]).to_s)
            puts "Enter a new name : "
            newName = gets.chomp
            customers[indexLoop].put_customer_name(newName)
            customers[indexLoop].print_customer_details()
        end
        indexLoop += 1
    end
end
