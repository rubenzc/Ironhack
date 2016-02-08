# Creamos clase Employee
class Employee
    attr_reader :name, :email
    attr_accessor :salary
    def initialize(name, email)
      @name = name
      @email = email
      @salary= 0
    end
end

class HourlyEmployee < Employee
	attr_reader :hours_worked, :hourly_rate
    def initialize(name, email, hours_worked, hourly_rate)
        super(name, email)
        @hours_worked = hours_worked
        @hourly_rate = hourly_rate
    end

    def calculate_salary
    	#returns the hours worked * hourly_rate
      	@salary=@hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
	attr_reader :yearly_salary
	def initialize (name, email, yearly_salary)
		super(name, email)
		@yearly_salary = yearly_salary
	end
	def calculate_salary
		@salary=@yearly_salary /= 365
	end
end

class MultiPaymentEmployee < Employee
		def initialize (name, email, yearly_salary, hourly_rate, hours_worked)
			super(name, email)
			@yearly_salary = yearly_salary
			@hours_worked = hours_worked
        	@hourly_rate = hourly_rate
		end

        def calculate_salary
            @yearly_salary /= 365
            if @hours_worked > 40
                @hours_worked=(@hours_worked-40)*@hourly_rate
            end
            @salary=@yearly_salary + @hours_worked
        end
end

class Payroll
    attr_accessor :employees
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
    sum=0
    for i in @employees
        sum= i.calculate_salary + sum
    end
        puts "El total a pagar es #{sum+(sum*0.82)}"
  end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
ruben = HourlyEmployee.new('Rubén', 'rubenzc@me.com', 20, 100)
juan= MultiPaymentEmployee.new("Juan", "juan@thejohncolbysect.com", 40000, 275, 45)

employees = [josh, nizar, ted, ruben, juan]
payroll = Payroll.new(employees)
payroll.pay_employees
