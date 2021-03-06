require './spec_helper'

# We're now requiring and describing an Item class.
# Recall that all your new code/files should be created in the lib folder

describe Item do

  # Let's test a new item: "Rubies"
  describe "example item of rubies weighing 20 lbs" do
    # Create a new "Rubies" item before each test
    before :each do
      @item = Item.new("Rubies", 20)
    end

    # Expect that now when you check the instantiated item's name and weight,
    # it should match the information passed in above.
    it "should equal 'Rubies'" do
      expect(@item.name).to eq("Rubies")
    end
    it "should have weight of 20" do
      expect(@item.weight).to eq(20)
    end
  end

  # Let's test another item, some Nuts
  describe "example item of nuts weighing 10 lbs" do
    before :each do
      @item = Item.new("Nuts", 10)
    end

    # Expect that now when you check the instantiated item's name and weight,
    # for it to match the information passed in above.
    it "should equal 'Nuts'" do
      expect(@item.name).to eq("Nuts")
    end

    it "should have weight of 10" do
      expect(@item.weight).to eq(10)
    end
  end

end
