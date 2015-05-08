require './spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new
  end

  describe "#shield" do
    it "should be 50" do
      expect(@robot.shield).to eq(50)
    end
  end

  describe "#wound" do
    it "a shielded robot less damage than shield capacity" do
      @robot.wound(20)
      expect(@robot.shield).to eq(30)
      expect(@robot.health).to eq(100)
    end

    it "a shielded robot damage over shield capacity" do
      @robot.wound(60)
      expect(@robot.shield).to eq(0)
      expect(@robot.health).to eq(90)
    end


    it "a shielded robot recieves exactly 150 damage and is instantly killed" do
      @robot.wound(150)
      expect(@robot.shield).to eq(0)
      expect(@robot.health).to eq(0)
    end

    it "a shielded robot recieves over 150 damage and is instantly killed" do
      @robot.wound(170)
      expect(@robot.shield).to eq(0)
      expect(@robot.health).to eq(0)
    end



  end

  # describe "#heal" do
  #   it "increases health" do
  #     @robot.wound(140)
  #     @robot.heal(10)
  #     expect(@robot.health).to eq(20)
  #   end

  #   it "doesn't increase health over 100" do
  #     @robot.heal(10)
  #     expect(@robot.health).to eq(100)
  #   end
  # end

  # describe "#attack" do
  #   it "wounds other robot with weak default attack (5 hitpoints)" do
  #     robot2 = Robot.new

  #     # Create an expectation that by the end of this test,
  #     # the second robot will have had #wound method called on it
  #     # and 5 (the default attack hitpoints) will be passed into that method call
  #     expect(robot2).to receive(:wound).with(5)

  # #     # This is what will trigger the wound to happen on robot2
  #      @robot.attack(robot2)
  #   end

#   end
 end
