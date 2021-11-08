print "Which animal's language do you want to know? "
animal = gets.chomp.capitalize

case animal
	when 'Cow'
		p 'The Cow says muu'
	when 'Cat'
		p 'The Cat says meow'
	when 'Dog'
		p 'The Dog says bark-bark'
	when 'Pig'
		p 'The Pig says oink-oink'
	when 'Fox'
		p 'The Fox says hehehe'
	else
		p "The #{animal}'s language was not found in the base"			
end
