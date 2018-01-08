FactoryBot.define do
  sequence(:name) { |n| "product #{n}" }

	factory :product do
		name
		description "nice product"
		colour "blue"
		price "130"
    image_url "product1.png"
	end
end
