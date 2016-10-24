require 'rails_helper'

describe Recipe do 
    
    before(:each) do 
        @recipe = Recipe.create(title: "Cookies", description: "C is for Cookie. Y is for yummy.", instruction: "Cut and bake")
        @recipe_no_title = Recipe.create(description: "C is for Cookie. Y is for yummy.", instruction: "Cut and bake")
        @recipe_no_description = Recipe.create(title: "Cookies", instruction: "Cut and bake")
        @recipe_no_instruction = Recipe.create(title: "Cookies", description: "C is for Cookie. Y is for yummy.")
    end
    
    after(:each) do
        Recipe.destroy_all
    end

    context "it instantiates a new Recipe" do 
        it "creates a valid Recipe" do 
            expect(@recipe).to be_an_instance_of(Recipe)
            expect(@recipe).to be_valid
        end
        it "has a title" do 
            expect(@recipe.title).to eq("Cookies")
        end
        it "has a description" do 
            expect(@recipe.description).to eq("C is for Cookie. Y is for yummy.")
        end
        it "has a instruction" do 
            expect(@recipe.instruction).to eq("Cut and bake")
        end
    end

    context "it does not save an invalid Recipe" do 
        it "a Recipe with no title is invalid" do 
            expect(@recipe_no_title).to be_invalid
        end
        it "a Recipe with no description is invalid" do 
            expect(@recipe_no_description).to be_invalid
        end
        it "a Recipe with no instruction is invalid" do 
            expect(@recipe_no_instruction).to be_invalid
        end
    end

end

