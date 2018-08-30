# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run Rails.application
