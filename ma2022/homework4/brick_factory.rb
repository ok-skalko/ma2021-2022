require './brick'
require './sort_array'

class BricksFactory
  include SortArray

  attr_accessor :number_of_bricks

  def initialize(number_of_bricks)
    @number_of_bricks = number_of_bricks
    @serial_number = 0
    @array1 = [3, 2, 5, 1]
    create_bricks
  end

  def create_bricks
    bricks = (1..@number_of_bricks).to_a
    list_of_bricks = bricks.map do |brick|
      brick = Brick.new.new_brick
      add_serial_number(brick) if brick[:state] == 'unbroken'
      brick
    end
    @list_of_bricks = list_of_bricks
  end

  def unbroken_bricks
    @list_of_unbroken_bricks = @list_of_bricks.select { |brick| brick[:state] == 'unbroken' }
  end

  def unbroken_bricks_sort_by_color
    sort_array(unbroken_bricks, :color)
  end

  def return_last_ten_unbroken_bricks
    unbroken_bricks_filter_by_color.last(10)
  end

  def unbroken_bricks_filter_by_color(color)
    unbroken_bricks.select { |brick| brick.value?(color) }
  end

  def add_serial_number(one_brick)
    one_brick[:serial_number] = @serial_number
    @serial_number += 1
    one_brick
  end
end
