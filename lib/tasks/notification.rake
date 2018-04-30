namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	puts 'Im in a rake task!'
  	#1.schedule to run every sunday at 5pm
  	#2. Iterarate over all employees
  	#3. Skip adminUsers
  	#4. Send a message that has instructions and a link to log time
  	#User.all.each do |user|
  		#SmsTool.send_sms()
  	#end
  	#no spaces or dashes
  	#exactly 10 characters
  	#all characters have to be numbers
  end

    desc "Sends mail notofication to manager (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    #1. Iterate over list of pending overtime requests   
    #2. Check to see if there are any requests
    #3. Iteratate over list of admin/user managers
    #4. Send notifcation to managers
   
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    if submitted_posts.count > 0 
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
         p 'inside manager_email '
      end
    end  
  end
end
