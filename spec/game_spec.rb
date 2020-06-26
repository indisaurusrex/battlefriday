describe Game do
  describe '#attack' do
    it "should attack the player" do
      p2 = Player.new("Arav")
      expect { subject.attack(p2) }.to change{ p2.hp}.from(60).to(50)
    end
  end
end