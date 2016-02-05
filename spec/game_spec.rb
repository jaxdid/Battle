require 'game'
require 'player'

describe Game do
  subject(:player1) {Player.new('Alain')}
  subject(:player2) {Player.new('Rebecca')}

  it 'damages another player' do
    expect(player2).to receive(:receives_attack)
    Game.new.attack(player2)
  end
end