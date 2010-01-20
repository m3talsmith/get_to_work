# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_get_to_work_session',
  :secret      => 'bb018970283dab9951607a788ba52556aaa949d3ed2c9073dcdd1201d3ab4634d8d4aebfe8e79da7184767db31b1400fdd24e5dd8711fb80f9ef24fc3500da44'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
