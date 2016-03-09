require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use CandidatesController
use PoliciesController
use ReactionsController
use VotersController
use Rack::MethodOverride
run ApplicationController