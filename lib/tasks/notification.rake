namespace :notification do
  desc "Sends SMS notification to employees asking them to log hours if they were not logged the day prior"
  task sms: :environment do
      employees = Employee.all
      notification_message = "Please login in to the time tracking dashboard to submit your hours for yesterday: https://overtime-tracker.herokuapp.com "

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
    end
  end

  desc "Sends mail notifications to managers(admin users) ach day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
