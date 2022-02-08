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
end
