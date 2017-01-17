namespace :notification do
  desc "Sends SMS notification to employees asking them to login or not if they had overtime"
  task sms: :environment do

  end
  desc "Sends mail notifications to managers(admin users) ach day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliever_later
      end
    end
  end

end
