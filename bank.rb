# BankAccount requires 4 arguments to create a new account.

class BankAccount
	def initialize(firstname, lastname, balance, creditdebt)
		@firstname = firstname
		@lastname = lastname
		@balance = balance
		@creditdebt = creditdebt
	end

	def account_info
		puts "Statement for #{@firstname} #{@lastname}: Your bank balance is #{@balance.round(2)} dollars. Your credit card bill is #{@creditdebt.round(2)} dollars."
	end

# Increases the bank @balance. Prevents a negative amount from being deposited.
	def deposit(amount)
		if amount > 0
			@balance += amount
			puts "You deposited #{amount.round(2)}, which brings your balance to #{@balance.round(2)}."
		else
			puts "That isn't a valid deposit amount!"
		end
	end

# Reduces the bank @balance by the withdrawn amount. Charges overdraft fee if account is overdrawn.
	def withdraw(amount)
		@balance = @balance - amount
		puts "You withdrew #{amount.round(2)}, which brings your balance to #{@balance.round(2)}."
		if @balance < 0
			@balance -= 10
			puts "You've overdrawn you account. You have been charged a $10 fee. Your account balance is now #{@balance.round(2)} dollars."
		end
	end

# Increases credit card balance by the purchase amount.
	def credit_purchase(amount)
		@creditdebt = @creditdebt + amount
		puts "You made a purchse of #{amount.round(2)} on your credit card. This brings your credit card bill to #{@creditdebt.round(2)}."
	end

# Pays the credit card amount with the same amount from the bank balance. Charges an overdraft fee if the bank account is overdrawn.
	def pay_credit_card(amount)
		@creditdebt = @creditdebt - amount
		@balance = @balance - amount
		puts "You made a payment of #{amount.round(2)} toward your credit bill from you bank account. You now have a credit card balance of #{@creditdebt.round(2)} and a bank balance of #{@balance.round(2)}."
		if @balance < 0
			@balance -= 10
			puts "You've overdrawn you account. You have been charged a $10 fee. Your account balance is now #{@balance.round(2)} dollars."
		end
	end

# Charges monthly interest to credit card balance and adds monthly interest to bank account.
	def add_monthly_interest
		if @balance > 0
			@balance *= 1.0003
			@balance.round(2)
		end

		if @creditdebt > 0
			@creditdebt *= 1.015
			@creditdebt.round(2)
		end
	end

end