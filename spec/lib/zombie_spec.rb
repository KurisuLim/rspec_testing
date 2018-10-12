# 2003 Rspec way to test

require 'spec_helper.rb'
require 'zombie.rb'

describe Zombie do
    it "is named Ash" do
        zombie = Zombie.new
        zombie.name.should == 'Ash'
    end

    it "has no brains" do
        zombie = Zombie.new
        zombie.brains.should < 1
    end

    it "is not alive" do
        zombie = Zombie.new
        zombie.alive.should == 'false'
    end

    it "is rotting" do
        zombie = Zombie.new
        zombie.rotting.should == 'true'
    end

    it "is height 5 feet" do
        zombie = Zombie.new
        zombie.height.should >= 5
    end

    it "is hungry" do
        zombie = Zombie.new
        zombie.should be_hungry
    end

    # Pending
    it "pending number 1"

    xit "pending number 2" do

    end

    it "is pending number 3" do
        pending
    end

end