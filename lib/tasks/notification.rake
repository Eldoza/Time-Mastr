namespace :notification do
  desc "Sends SMS notification to employees asking them to login or not if they had overtime"
  task sms: :environment do
    if Time.now.sunday?
      employee = Employee.all
      notification_message = "Please login to the dashboard to request overtime if needed : https://overtime-tracker.herokuapp.com "

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.number, message: notification_message)
      end
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
