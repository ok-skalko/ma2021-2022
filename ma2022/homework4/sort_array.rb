module SortArray
  def sort_array(array, field)
    @failed_elements = []
    @correct_elements = []
    filter_correct_elements(array, field)
    puts @failed_elements
    @correct_elements.sort_by { |el| el.public_send(field) }
  end

  def filter_correct_elements(array, field)
    array.each do |el|
      if el.public_send(field)
        @correct_elements << el
      else
        @failed_elements << el
        puts "element #{el} does not contain the requested field"
      end
    end
  end
end
