require './lib/cell'

RSpec.describe Cell do
  it 'exists' do
    cell = Cell.new
    expect(cell).to be_a(Cell)
  end
end
