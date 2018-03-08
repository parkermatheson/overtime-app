namespace :notification do
  desc 'Sends SMS notification to employees asking them to log if they had overtime or not'
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: '555-555-3323'
    # number: '5555553323'
    # No spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
  end

  desc 'Sends mail notification to managers (admin users) each day to inform of pending overtime requests'
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    # 2. Check to see if there are any requests
    if submitted_posts.count > 0
    # 3. Iterate over the list of admin users/manager
      admin_users.each do |admin|
    # 4. Send the email to each admin
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
