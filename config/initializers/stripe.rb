Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_mQ4nEfJvIIfBzwjFNIrmAllN'],
  secret_key:      ENV['sk_test_IyIgM2CZhgkZMx0fZFtAW4sw']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
