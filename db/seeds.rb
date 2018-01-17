@user = User.create(first_name: "Julio", 
	last_name: "Vasquez", 
	email: "test@test.com", 
	password: "12345678",
	password_confirmation: "12345678",
	phone: "7186737301")

@admin_user = AdminUser.create(first_name: "Julio", 
	last_name: "Vasquez" , 
	email: "admin@admin.com", 
	password: "12345678", 
	password_confirmation: "12345678",
	phone: "7186737301")

puts "1 User Created + 1 adminUser"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content" , user_id: @user.id,  overtime_request: 2.5)
end

puts "100 posts have been created"

100.times do |auditlog|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Auditlogs have been created"



