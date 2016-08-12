
module Hourly
	def hourly_pay hourly_rate, hours_worked
	@hourly_rate * @hours_worked
	end
end

module Yearly
	def yearly_pay
		@yearly_salary
	end
end

class Employee #Sera nuestra clase Padre
	attr_reader :name, :email
	def intialize name, email
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee
include HourlyPay
	def initialize name, email, hourly_rate, hours_worked
		@name = name
		@email = email
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		hourly_pay(@hourly_rate, @hours_worked)
	end
		
	end
end



class SalariedEmployee < Employee
include YearlyPay
	def initialize name, email, yearly_salary
		@name = name
		@email = email
		@yearly_salary = yearly_salary
	end
	def calculate_salary
	end
end





class MultiPaymentEmployee < Employee 
include YearlyPay
include HourlyPay
	def initialize name, email, yearly_salary, extra_hours, hours_per_week
		@name = name
		@email = email
		@yearly_salary = yearly_salary
		@extra_hours = 275
		@hours_per_week = hours_per_week
	end

def calculate_salary
		calcultate_year_salary + 

		puts @yearly_salary+((@hours_per_week - 40) * @extra_hours)
	end


end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
josh.calculate_salary

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
nizar.calculate_salary

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
ted.calculate_salary