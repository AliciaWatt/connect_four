require './lib/cell'

RSpec.describe Cell do
  before(:each) do
    @cell = Cell.new
  end
  it 'exists' do
    expect(@cell).to be_a(Cell)
  end

  it 'has attributes' do
    expect(@cell.coordinate).to be_a(String)
    expect(@cell.type_of_player).to eq(nil)
  end

  xit 'can render a "O" whe it is occupied by a computer' do
    cell = Cell.new('computer')
    expect(@cell.render).to eq('O')
  end

  xit 'can render a "X" when it is occupied by a player' do
    expect(@cell.render).to eq('X')
  end

  it 'can render a "." when it is unoccupied' do
    expect(@cell.render).to eq('.')
  end

  it 'can place a piece' do
  end
end
