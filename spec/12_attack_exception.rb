require './spec_helper'

describe Robot do

  before :each do
    @robot = Robot.new
    @robot2 = Robot.new
  end

  describe "#health" do
    it "should be 100" do
      expect(@robot.health).to eq(100)
    end
  end

  

  describe "#attack!" do

    it "wounds other robot with weak default attack (5 hitpoints)" do

      # Create an expectation that by the end of this test,
      # the second robot will have had #wound method called on it
      # and 5 (the default attack hitpoints) will be passed into that method call
      expect(@robot2).to receive(:wound).with(5)

      # This is what will trigger the wound to happen on robot2
      @robot.attack!(@robot2)

    end

    it "attacks an item and should throw an error" do

      @item_under_attack = Item.new
      expect{ @robot.attack!(@item_under_attack) }.to raise_error UnattackableEnemy
    #expect{ @robot.heal!(10)}.to raise_error
  end

 it "attacks an weapon and should throw an error" do

      @item_under_attack = Laser.new
      expect{ @robot.attack!(@item_under_attack) }.to raise_error UnattackableEnemy 
    #expect{ @robot.heal!(10)}.to raise_error
  end





  end

end
