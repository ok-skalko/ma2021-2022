class Brick
  attr_accessor :serial_number, :state, :color

  def initialize(color, state)
    @color = color
    @state = state
  end
end
