module EmailReportable
  def send_report
  puts "Sending email..."
  # use email sending library...
  puts "Email sent!"
end
class Employee
  attr_reader :first_name, :last_name, :active 
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  include EmailReportable
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end
  def give_all_raises
    index = 0
    while index < employees.length
      employees[index].give_all_raises
      index = index + 1
    end
  def fire_all_employees
      index = 0
    while index < employees.length
        employees[index].fire_all_employees = false
        index = index + 1
    end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises
p employee1.print_info
p employee2.print_info

class Intern < Employee
  def send_report
    puts "sending email"
    #use email library to send
    puts "email sent"
  end
end
# below is the instance variable

intern = Intern.new(first_name: "Adrian", last_name: "lowe", salary: 50000, active:true)

intern.print_info 
intern.send_report