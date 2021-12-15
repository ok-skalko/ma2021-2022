class Brick
  ALL_COLLORS = %w(red blue green white orange pink broun).freeze

  def new_brick
    Hash[:color, color, :state, state]
  end

  def color
    ALL_COLLORS.sample
  end

  def state
    rand(100) < 80 ? 'unbroken' : 'broken'
  end
end
