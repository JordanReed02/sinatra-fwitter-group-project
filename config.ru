require './config/environment'
require ".app"

run App
if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use TweetsController
use UsersController
run ApplicationController
