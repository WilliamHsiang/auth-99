# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
password = "haha"
puts password
encrypted_password = BCrypt::Password.create(password)
puts encrypted_password
# 2. prepare encrypted string for testing
submitted_pw = "haha"
encrypted_text = BCrypt::Password.new(encrypted_password)
puts encrypted_text
puts encrypted_text == submitted_pw
# 3. test secret against prepared encrypted string
