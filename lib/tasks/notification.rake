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
end
