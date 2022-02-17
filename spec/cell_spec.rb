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

  # it 'can render a "O" whe it is occupied by a computer' do
  #   cell = Cell.new('computer')
  #   expect(@cell.render).to eq('O')
  # end
  #
  # it 'can render a "X" when it is occupied by a player' do
  #   cell = Cell.new('player')
  #   expect(@cell.render).to eq('X')
  # end

  it 'can render a "." when it is unoccupied' do
    expect(@cell.render).to eq('.')
  end

  it 'can tell if it is occupied' do
    cell = Cell.new('computer')
    expect(cell.occupied?).to eq(false)
    expect(cell.occupied?).to_not eq(true)
  end

  it "can tell what coordinates it is when unoccupied" do
    cell = Cell.new("A1")
    expect(cell.coordinate).to eq("A1")
  end

  it 'can tell what coordinates it is when occupied' do
    cell = Cell.new("A1")
    expect(cell.coordinate).to eq("A1")
  end

  it 'can place a piece on an empty cell' do
    cell = Cell.new
    expect(cell.occupied?).to eq(false)
    cell.place_piece('player')

    expect(cell.occupied?).to eq(true)
    expect(cell.type_of_player).to eq("player")
  end
end
