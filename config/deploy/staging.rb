set :rails_env, "staging"
set :unicorn_rack_env, "staging"

role :app, %w{deploy@geniearth.com}
role :web, %w{deploy@geniearth.com}
role :db,  %w{deploy@geniearth.com}

server 'geniearth.com', user: 'deploy', roles: %w{web app db}

set :ssh_options, {
  # keys: %w(/home/delpoy/.ssh/id_rsa),
  # forward_agent: false,
  # auth_methods: %w(publickey)
}