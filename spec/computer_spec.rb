# require './lib/board'
require './lib/computer'
require './lib/game'
# require './lib/player'


RSpec.describe Computer do
  before(:each) do
    @computer = Computer.new
  end
  it 'exists' do
    expect(@computer).to be_a Computer
  end
end
