require './lib/board'
require './lib/game'
require './lib/computer'
require './lib/player'

RSpec.describe Computer do
  before(:each) do
    computer = Computer.new
  end
  it 'exists' do
    generate_cells = ["A", "B", "C", "D", "E", "F", "G"]
    computer = Computer.new(generate_cells)
    expect(@computer).to be_a Computer
  end

end
