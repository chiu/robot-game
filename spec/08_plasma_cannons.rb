require './spec_helper'

describe PlasmaCannon do

  before :each do
    @plasma_cannon = PlasmaCannon.new
  end

  it "should be a Weapon" do
    expect(@plasma_cannon).to be_an(Weapon)
  end

  it "should be called 'Plasma Cannon'" do
    expect(@plasma_cannon.name).to eq('Plasma Cannon')
  end

  it "should weight 200" do
    expect(@plasma_cannon.weight).to eq(200)
  end

  it "should create 55 damage" do
    expect(@plasma_cannon.damage).to eq(55)
  end
end
