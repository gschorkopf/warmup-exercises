require 'rspec'
require_relative './player'
require_relative './match'

describe "Player" do
  it "player 1 has an initial score" do
    jeff = Player.new("Jeff", 1900)
    expect(jeff.score).to eq 1900
  end

  it "player 2 has an initial score" do
    katrina = Player.new("Katrina", 2000)
    expect(katrina.score).to eq 2000
  end

  it "player 1 has a name" do
    pending
    jeff = Player.new("Jeff", 1900)
    expect(jeff.name).to eq "Jeff"
  end

  it "player 2 has a name" do
    pending
    katrina = Player.new("Katrina", 2000)
    expect(katrina.name).to eq "Katrina"
  end
end

describe "Match" do
  context "two players of different scores compete in chess match" do
    # let!(:jeff) {Player.new("Jeff", 900)}
    # let!(:katrina) {Player.new("Katrina", 1100)}
    # let!(:franklin) {Player.new("Franklin", 1500)}

    it "takes initial players" do
      pending
      match = Match.new(jeff, katrina)
      expect(match.player1).to eq jeff
      expect(match.player2).to eq katrina
    end

    it "picks the favorite" do
      pending
      match = Match.new(jeff, katrina)
      expect(match.favorite).to eq katrina
    end

    it "changes the players' score based on ELO scores" do
      pending
      match1 = Match.new(jeff, katrina)
      match1.winner(katrina)
      expect(jeff.score).to eq 891
      expect(katrina.score).to eq 1109
    end

    it "changes the players' score based on ELO scores" do
      pending
      match2 = Match.new(katrina, franklin)
      match2.winner(franklin)
      expect(franklin.score).to eq 1504
      expect(katrina.score).to eq 1096
    end

    it "changes the players' score based on ELO scores" do
      pending
      match3 = Match.new(franklin, jeff)
      match3.winner(jeff)
      expect(jeff.score).to eq 927
      expect(franklin.score).to eq 1473
    end
end
