# require './lib/board'
# require './lib/game'
# require './lib/computer'
# require './lib/player'
#
# RSpec.describe Computer do
#   before(:each) do
#     computer = Computer.new
#   end
#   it 'exists' do
#     place_piece = ["A", "B", "C", "D", "E", "F", "G"]
#     computer = Computer.new
#     expect(@computer).to be_a Computer
#   end
#
#   it 'can randomly choose a column inside range' do
#     expect(computer.column_selection).to be_a String
#     expect(computer.column_selection).to_not eq "H"
#   end
#
#   it 'can choose another column if the whole column is full ' do
#
#   end
#
# end
