loop do |variable|
	print 'Enter the number: '
	number = gets.chomp
	if number.count('1') <= 1 && number == "#{number.to_i}"
		puts "Execution result: #{number.to_i * 256}"
	else
		puts "Conditions are not met, I stop the program."
		break
	end
end
