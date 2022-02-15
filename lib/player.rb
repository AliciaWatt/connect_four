class Player

  attr_reader   :cells_range, :name


  def initialize(cells_range, name= "Player")
    @cells_range = cells_range
    @name = name

  end

  def column_selection
    puts "Which column would you like to choose next?"
    puts "Column" + "#{column}" + ", great choice."
  end
end
