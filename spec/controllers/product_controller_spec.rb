require 'rails_helper'


describe ProductsController, type: :controller do

	before do
		@user = FactoryBot.create(:user)
		@product = FactoryBot.create(:product)
		sign_in @user
  end

  # =================================================
	###GET index
	describe 'GET #index' do

    context 'when products are created' do
      it 'renders  index template' do
        get :index
        expect(response).to be_ok
        expect(response).to render_template('index')
      end
    end
end

  # =================================================
	### GET show
	describe 'GET #show' do
		context 'when the GET show action is requested' do
			it 'renders the show template' do
				get :show, params: { id: @product }
				expect(response.status).to eq 200
				expect(response).to render_template('show')
			end
		end
	end

  # =================================================
	### GET new
	describe 'GET #new' do
		context 'when the GET new is requested ' do
			it 'renders the new product template' do
				get :new
				expect(response).to be_ok
        expect(response).to render_template('new')
			end
		end
	end

	### GET edit
  describe 'GET #edit' do
    context "When the user is admin" do
      it "renders the edit template" do
        get :edit, params: {id: @product.id}
        expect(response).to be_ok
        expect(response).to render_template("edit")
      end
    end
  end

  # =================================================
	### GET edit
  describe 'POST #create' do
    context 'when a new product created' do
      it 'new product with its valid details will be stored' do
        post :create, params:{product: {id: @product.id ,name: @product.name, description: @product.description, image_url: @product.image_url, colour: @product.colour, price: @product.price}}
        expect(assigns(:product)).to be_a(Product)
      end

      it "is a valid product" do
        @product = FactoryBot.build(:product)
        expect(@product).to be_valid
      end
      it "is an invalid product, name is missing" do
        @product = FactoryBot.build(:product, name: "")
        expect(@product).not_to be_valid
      end
      it "is an invalid product, price is missing" do
        @product = FactoryBot.build(:product, price: "")
        expect(@product).not_to be_valid
      end
    end
  end

  # =================================================
	### GET update
  describe 'PUT/PATCH #update' do
    it "updates product's name" do
      @update = { id: @product_id, name: @product.name, colour: @product.colour, description: @product.description, image_url: @product.image_url,  price: @product.price }
      put :update, params: {id: @product.id, product: @update}
      @product.reload
      expect(@product.name).to eq @product.name
    end
  end

	### GET destroy
  describe 'DELETE #destroy' do
    it "delete product" do
      delete :destroy, params: {id: @product.id}
      expect(response).to redirect_to products_path
    end
  end
end
