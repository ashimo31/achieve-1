server '52.199.239.160', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/nobuom/.ssh/id_rsa'
