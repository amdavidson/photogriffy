# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photogriffy.net_session',
  :secret      => '773cd8ad173ff4b91faa99f5eed97512c4ddae00c6e116899af203ca98bc8e227f6a9093cb4cfcf6ff4c232d0ccf69033389a3d666c6c180c971d18278385d35'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
