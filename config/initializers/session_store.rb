# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_recipebook_session',
  :secret      => '2f1743bbbfefc1bd34c07c42ea3154062570af7e76facb9036872ed80a38068fc0ff9a71c495ed0832d878c1eeed5f518866cda5503eb9befa96439c7040a5b1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
