# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    tokencd
  end
end

SampleApp::Application.config.secret_key_base = '13ff9052d29ad5676e6883d45a7de3d35cb742ab1ef33aa9d4228d5bf56c63a93810ab11e1bbab782de2f38e2ffbefa3112c5bea5efbd3c683c4ff4e2d82a79b'
