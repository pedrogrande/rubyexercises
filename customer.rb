# require 'csv'

class Customer
  CUSTOMER_FILE = "customers.csv"

  def initialize(id, name, address, phone, email, balance)
    @id = id
    @name = name
    @address = address
    @phone = phone
    @email = email
    @balance = balance
    @customer = {"id" => @id, "name" => @address, "phone" => @phone, "email" => @email, "balance" => @balance}
  end

  def find
  end

  def show
  end

  def self.list
    @customers = []
    open(CUSTOMER_FILE, 'r').each_line do |line|
      @customers << eval(line)
    end
    return @customers
  end

  def save
    open_file = open(CUSTOMER_FILE, 'a')
    open_file.write(@customer)
    open_file.write("\n")
    open_file.close
  end

  def update
  end

  def delete
  end
end
