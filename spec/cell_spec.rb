require './lib/cell'

RSpec.describe Cell do
  before(:each) do
    @cell = Cell.new
  end
  it 'exists' do
    expect(@cell).to be_a(Cell)
  end

  it 'has attributes' do
    expect(@cell.type_of_player).to eq(nil)
    expect(@cell.coordinates).to be_a(String)
  end

  it 'can render a "O" whe it is occupied by a computer' do
    expect(@cell.render).to eq('O')
  end

  it 'can render a "X" when it is occupied by a player' do
    expect(@cell.render).to eq('X')
  end

  it 'can render a "." when it is unoccupied' do
    expect(@cell.render). to eq(".")
  end




end
