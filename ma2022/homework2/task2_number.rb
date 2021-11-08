loop do |variable|
	print 'Enter the number: '
	number = gets.to_i
	check_number = number.to_s.split('').map(&:to_i).select { |int| int == 1}
	if check_number.size > 1
		puts "Conditions are not met, I stop the program."
		break
	end
	puts "Execution result: #{number * 256}"
end
