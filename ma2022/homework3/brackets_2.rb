class String

  HASH = { "{" => "}", "[" => "]", "(" => ")", "<" => ">" }

  def valid?
    @array = self.chars
    return false if @array.size.odd?
    while @array.size > 1
      if HASH[@array[0]] == @array[1]
        @array.shift(2)
      elsif HASH[@array[0]] == @array[-1]
        @array.shift ; @array.pop
      else
        return false
      end
    end
    true
  end
end
