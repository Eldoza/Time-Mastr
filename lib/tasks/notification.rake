namespace :notification do
  desc "Sends SMS notification to employees asking them to login or not if they had overtime"
  task sms: :environment do
    puts "I am in the rake task!"
  end

end
