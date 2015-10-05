namespace :knex do
  desc 'Run all migrations that have not yet been run.'
  task :latest do
    on roles fetch(:knex_roles) do
      within release_path do
        with fetch(:knex_env_variables) do
          execute fetch(:knex_binary), 'migrate:latest'
        end
      end
    end
  end

  after 'deploy:updated', 'knex:latest'

  desc 'Rollback the last set of migrations performed.'
  task :rollback do
    on roles fetch(:knex_roles) do
      within release_path do
        with fetch(:knex_env_variables) do
          execute fetch(:knex_binary), 'migrate:rollback'
        end
      end
    end
  end

  desc 'View the current version for the migration.'
  task :current_version do
    on roles fetch(:knex_roles) do
      within release_path do
        with fetch(:knex_env_variables) do
          version = capture fetch(:knex_binary), 'migrate:currentVersion'
          version.split("\n").each do |line|
            info line if line.include? 'Current Version'
          end
        end
      end
    end
  end

  desc 'Run seed files.'
  task :seed do
    on roles fetch(:knex_roles) do
      within release_path do
        with fetch(:knex_env_variables) do
          execute fetch(:knex_binary), 'seed:run'
        end
      end
    end
  end
end

namespace :load do
  task :defaults do
    set :knex_roles, :all
    set :knex_env_variables, {}
    set :knex_binary, :knex
  end
end
