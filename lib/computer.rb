class Computer
  attr_reader :cells_range
  def initialize(cells_range)
    @cells_range = cells_range
  end

  def column_selection
    @cells_range.sample
  end 
end
