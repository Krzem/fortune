# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fortune_session',
  :secret      => '4067b240ba7148f38c89918ca5e95ae682efb2bb130f2f04a559220cb55daf7dfe966768b89ca4506f1c075ab68571c8f9575e77c1653646f34193ec14db0325'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
