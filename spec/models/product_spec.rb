require 'rails_helper'
describe Product do

  before do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
  end

  context 'when the product has comments' do
      let (:product) {Product.create!(name:"race bike",description: "bike bike bike",image_url: "product1.png",colour: "green",price: "27")}
      let (:user) {User.create!(first_name: "mohammed", last_name:"khadra", email: "mkhadra@gmail.com", password: "123456")}


    it "returns the average rating of all comments" do
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
      expect(@product.average_rating).to eq(3)
    end

    it "is not valid without a name" do
      expect(Product.new(description:"Nice Bike")).not_to be_valid
    end

  end
end
