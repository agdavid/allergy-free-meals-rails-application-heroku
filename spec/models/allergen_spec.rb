require 'rails_helper'

describe Allergen do 
    before(:each) do 
        @allergen = Allergen.create(name: "Gluten")
        @bad_allergen = Allergen.create
    end

    after(:each) do 
        Allergen.destroy_all
    end

    context "it instantiates a new Allergen" do 
        it "creates a valid Allergen" do
            expect(@allergen).to be_valid 
            expect(@allergen).to be_an_instance_of(Allergen)
        end
        it "has a name" do 
            expect(@allergen.name).to eq("Gluten")
        end
    end
    context "it does not instantiate a new Allergen" do 
        it "is invalid with no name" do 
            expect(@bad_allergen).to be_invalid
        end
    end
end