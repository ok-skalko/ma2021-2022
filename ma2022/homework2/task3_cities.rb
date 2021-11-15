print 'Enter your favorite cities: '
favorite_cities = gets.chomp.split(",").sort
print 'Enter the cities you hate the most: '
hated_cities = gets.chomp.split(",").sort
all_cities = favorite_cities + hated_cities
puts all_cities.map { |i| i.strip }.join(', ')
