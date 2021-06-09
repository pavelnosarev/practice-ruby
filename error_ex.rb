class Person
  attr_reader :first_name, :last_name
end
  def initialize (input_first_name,input_last_name)
    @first_name = input_first_name
    @last_name = input_last_name 
  def print_info
    puts "#{first_name} #{last_name}"
  end
end
person1 = Person.new("Thomas", "Jefferson")
p person.print_info
