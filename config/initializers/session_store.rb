# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eringi_session',
  :secret      => '1a3d51a1757bd4d1a97af13c9600df142c310285ead6ca301f52114b9dee7ef1979d9a7fcc2efca467a1ec8d30766de6262150bf3493fe8d3665f4cda5015814'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
