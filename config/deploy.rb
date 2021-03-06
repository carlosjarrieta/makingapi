# config valid for current version and patch releases of Capistrano
lock "~> 3.10.0"

set :application, 'makingapi'
set :scm, :git
set :repo_url, 'ssh://git@github.com:22/carlosjarrieta/makingapi.git'
set :branch, "master"
set :deploy_via, :copy
set :user, 'deploy'

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/deploy/www/makingapps/api'
set :linked_files, %w{config/database.yml}
#append :linked_files, 'config/master.key'
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}




namespace :deploy do
      desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
  end
end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end


namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end


  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end



end
