require 'spec_helper'

describe Ingredient do 
    before(:each) do 
        @ingredient = Ingredient.new(amount: "1 tsp")
    end
    after(:each) do 
        Ingredient.destroy_all
    end

    context "it instantiates a new Ingredient" do 
        it "creates a valid Ingredient" do 
            expect(@ingredient).to be_an_instance_of(Ingredient)
            expect(@ingredient).to be_valid
        end
        it "has an amount" do 
            expect(@ingredient.amount).to eq("1 tsp")
        end
    end
end