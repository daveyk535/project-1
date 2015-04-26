# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
BurgerBuddy::Application.config.secret_token = aac7ae0d44d3bbb04112f37aeb999cea3d6c18aba450505ae6bd9a8360ed1359940831d81e94602298e0600a6211dbafdc19a269579419756e0f06e98b1a49a7
# BurgerBuddy::Application.config.secret_base = ENV['SECRET_KEY_BASE']
BurgerBuddy::Application.config.secret_key_base = aac7ae0d44d3bbb04112f37aeb999cea3d6c18aba450505ae6bd9a8360ed1359940831d81e94602298e0600a6211dbafdc19a269579419756e0f06e98b1a49a7
