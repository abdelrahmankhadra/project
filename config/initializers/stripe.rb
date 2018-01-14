if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_NpjN9yQG9FcHv5txwo5dh0Pt',
    secret_key: 'sk_test_ktYKUDS6hJfk57bowk8pUo8r'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
