# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

job_type :rbenv_rake, %Q{export PATH=/home/deploy/.rbenv/shims:/home/deploy/.rbenvbin:/usr/bin:$PATH; eval "$(rbenv init -)"; cd :path && :environment_variable=:environment bundle exec rake :task --silent :output }
job_type :backup, %Q{export PATH=/home/deploy/.rbenv/shims:/home/deploy/.rbenvbin:/usr/bin:$PATH; eval "$(rbenv init -)"; backup perform -t :task }
