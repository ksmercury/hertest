require 'active_record'
require 'custom_fixtures'

namespace :oneclick do
  desc "OneClick Bootstrap is: migrating, loading defaults, sample data and seeding (for all extensions) invoking create_admin and load_products tasks"
  task :bootstrap  do
    require 'highline/import'

    if ENV['AUTO_ACCEPT'] or agree("This task will destroy any data in the database. Are you sure you want to \ncontinue? [y/n] ")
      ENV['SKIP_NAG'] = 'yes'
      Rake::Task["db:remigrate"].invoke
    else
      say "Task cancelled, exiting."
      exit
    end

    Rake::Task["db:seed"].invoke 
    Rake::Task["db:sample"].invoke

    puts "OneClick Bootstrap Complete.\n\n"
  end

end
