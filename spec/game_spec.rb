describe Game do
  let (:player1) { Player.new("Arav") }
  let (:player2) { Player.new("India") }
  let(:game) { Game.new( player1, player2 ) }

  describe '#attack' do
    it "should attack the player" do
      # p2 = Player.new("Arav")
      expect { game.attack(player2) }.to change{ game.player2.hp}.from(60).to(50)
    end
  end

  describe '#initialize' do
    it "should accept two arguments" do
      p1 = double("Player class instance")
      p2 = double("Player class instance")
      expect(Game).to receive(:new).with(p1, p2)

      Game.new(p1, p2)
    end
  end
end