loop do |variable|
	print 'Enter the number: '
	number = gets
	if number.split('').map(&:to_i).count(1) > 1
		puts "Conditions are not met, I stop the program."
		break
	end
	puts "Execution result: #{number.to_i * 256}"
end
