require 'rspec'
require 'towers_of_hanoi'

describe Towers_of_Hanoi do
  subject(:game) {Towers_of_Hanoi.new(3, "Debra")}

  describe "initialize" do
    it "creates 3 towers" do
      expect(game.towers.length).to eq(3)
    end

    it "creates different size disks" do
      expect(game.towers[0]).to eq([3, 2, 1])
    end

    it "takes a player name" do
      expect(game.name).to eq("Debra")
    end

  end

  describe "move" do
    before(:each) do
      game.move(0, 1)
    end

    it "moves top disk to specified tower" do
      expect(game.towers[0]).to eq([3,2])
      expect(game.towers[1]).to eq([1])
    end

    it "raises an error if invalid move" do
      expect { game.move(0, 1) }.to raise_error(StandardError,"Can't place a larger disk on a smaller disk")
    end

    it "raises an error if trying to move"

  end

  describe "won?" do
    it "checks if all disks are in the last tower" do
      game.towers[2] = [3,2,1]
      expect(game.won?).to be true
    end
  end

end
