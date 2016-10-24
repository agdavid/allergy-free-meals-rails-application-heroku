require 'rails_helper'

describe Comment do 
    before(:each) do 
        @comment = Comment.new(description: "What a great recipe.")
    end

    after(:each) do
        Comment.destroy_all 
    end

    context "it instantiates a new Comment" do
        it "creates a valid Comment" do 
            expect(@comment).to be_an_instance_of(Comment)
            expect(@comment).to be_valid
        end

        it "has a description" do
            expect(@comment.description).to eq("What a great recipe.")
        end
    end

end