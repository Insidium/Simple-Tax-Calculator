def calculate_tax(income)

	case income
	when (0..18200)
		return {:percentage_of_income => 0, :tax_payable => 0}
	when (18201..37000)
		return {:percentage_of_income => ((income-18200)*0.19/income)*100, :tax_payable => (income-18200)*0.19}
	when (37001..87000)
		return {:percentage_of_income => (((income-37000)*0.325 + 3572)/income)*100, :tax_payable => ((income-37000)*0.325) + 3572}
	when (87001..180000)
		return {:percentage_of_income => (((income-87000)*0.37 + 19822)/income)*100, :tax_payable => ((income-87000)*0.37 + 19822)}
	when (180001..1000000000)
		return {:percentage_of_income => (((income-180000)*0.45 + 54232)/income)*100, :tax_payable => ((income-180000)*0.45 + 54232)}
	end

end

puts calculate_tax(1000000)

# $0 – $18,200 Nil
# $18,201– $37,000 19c for each $1 over $18,200
# $37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
# $87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
# $180,001 and over $54,232 plus 45c for every $1 over $180,000