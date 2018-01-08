require 'rails_helper'

describe Comment do
  before do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
  end

  context "Testing validations" do

    it "is not valid without a rating" do
      expect(Comment.new(rating:nil)).not_to be_valid
    end
    it "is not valid without text" do
      expect(Comment.new(body:nil)).not_to be_valid
    end
    it "is not valid without a user id" do
      expect(Comment.new(user_id:nil)).not_to be_valid
    end

    it "is not vailid without a product id" do
      expect(Comment.new(product_id:nil)).not_to be_valid
    end

    it "is not valid if rating is not integer" do
      expect(Comment.new(rating: "Hello World", user: @user, body: "good product", product: @product)).not_to be_valid
    end

    it "is a valid comment" do
      expect(Comment.new(rating: 4, user: @user, body: "very nice product", product: @product)).to be_valid
    end

  end
end
