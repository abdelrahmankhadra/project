require 'rails_helper'


describe ProductsController, type: :controller do

	before do
		@product1 = FactoryBot.create(:product)

  end

	### GET show
	describe 'GET #show' do
		context 'when the GET show action is requested' do
			it 'renders the show template' do
				get :show, params: { id: @product1 }
				expect(response.status).to eq 200
				expect(response).to render_template('show')
			end
		end
	end

	### GET new
	describe 'GET #new' do
		context 'when the GET new is requested ' do
			it 'renders the new product template' do
				get :new
        expect(response).to render_template('new')
			end
		end
	end
end
