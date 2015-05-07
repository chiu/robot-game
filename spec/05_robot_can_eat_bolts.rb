require './spec_helper'

describe BoxOfBolts do
  before :each do
    @bolts = BoxOfBolts.new
  end

  it "should be an item" do
    expect(@bolts).to be_an(Item)
  end

  it "has name 'Box of bolts'" do
    expect(@bolts.name.downcase).to eq("box of bolts")
  end

  it "has 25 weight" do
    expect(@bolts.weight).to eq(25)
  end

  describe "#feed" do
    it "heals the robot's health 20pts" do
      @robot = Robot.new
      expect(@robot).to receive(:heal).with(20)
      @bolts.feed(@robot)
    end
  end
end
