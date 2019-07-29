require_relative "../lib/player.rb"

RSpec.describe Player do
  describe "#wrong initialization" do
    it "raises an error when initialized with {}" do
      expect {Player.new({}) }.to raise_error
    end
    it "normal initialization" do
      input = { name: "NewName", symb: "x" }
      expect {Player.new(input) }.to_not raise_error 
    end
  end
  
  describe "#name" do
    it "returns name of the player" do
      input={ name: "Name", symb: "x" }
      player=Player.new(input)
      expect(player.name).to eq "Name"
    end
  end
  describe "#symbol" do
    it "returns the symbol" do
      input = { name: "emaN", symb: "o"}
      player=Player.new(input)
      expect(player.symb).to eq "o"
    end
  end
end