class Brick

  def new_brick
    brick = Hash[:color, color, :state, state]
  end

  def color
    all_colors = [ 'red', 'blue', 'green', 'white', 'orange', 'pink', 'broun']
    all_colors.sample
  end

  def state
    rand(100) < 80 ? 'unbroken' : 'broken'
  end
end
