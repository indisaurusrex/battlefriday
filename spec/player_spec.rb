feature 'Player class has name' do
  scenario 'player 1 knows its name' do
    p1 = Player.new("India")
    expect(p1.name).to eq "India"
  end
end