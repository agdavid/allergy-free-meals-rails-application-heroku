require 'spec_helper'

describe Item do 
    before(:each) do 
        @item = Item.new(name: "Strawberry")
    end

    after(:each) do 
        Item.destroy_all
    end

    context "it instantiates a new Item" do 
        it "creates a valid Item" do 
            expect(@item).to be_an_instance_of(Item)
            expect(@item).to be_valid
        end
        it "has a name" do 
            expect(@item.name).to eq("Strawberry")
        end
    end
end