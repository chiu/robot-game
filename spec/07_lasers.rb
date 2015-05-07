require './spec_helper'

describe Laser do
  before :each do
    @laser = Laser.new
  end

  it "should be a Weapon" do
    expect(@laser).to be_an(Weapon)
  end

  it "should be named 'Laser'" do
    expect(@laser.name).to eq("Laser")
  end

  it "should weight 125" do
    expect(@laser.weight).to eq(125)
  end

  it "should damage 25" do
    expect(@laser.damage).to eq(25)
  end
end
