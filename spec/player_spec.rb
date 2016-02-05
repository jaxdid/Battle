require 'player'

describe Player do
  subject(:player1) {described_class.new('Alain')}
  subject(:player2) {described_class.new('Rebecca')}

  it 'returns its name' do
    expect(player1.name).to eq('Alain')
  end

  it "should have a default HP of #{Player::DEFAULT_HP}" do
    expect(player1.current_HP).to eq Player::DEFAULT_HP
  end

  it 'damages another player' do
    expect(player2).to receive(:receives_attack)
    player1.attack(player2)
  end

  it 'suffers damage after an attack' do
    expect{player2.receives_attack}.to change{player2.current_HP}.by(-10)
  end
end