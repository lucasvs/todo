require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new
scheduler.every '90m' do
system 'bundle exec rake duedate:mail_users'
end 