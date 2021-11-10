arr = %w[a b c d] #це "рубішна" скорочена форма запису ось цього - ['a', 'b', 'c', 'd']

def arr.my_own_map
  if block_given?
    collection_counter = 0
    result = []
    until collection_counter == size
      element = yield(self[collection_counter])
      if element.is_a? Integer
        result << element * 2
      else
        result << element
      end
      collection_counter += 1
    end
    result
  else
    puts 'Please add a block'
  end
end

# відмінність - метод my_own_map можна викликати тільки на масиві, записаному в змінну arr
