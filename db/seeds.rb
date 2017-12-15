@user = User.create(first_name: "Julio", last_name: "Vasquez" , email: "test@test.com", password: "12345678", password_confirmation: "12345678")
@admin_user = AdminUser.create(first_name: "Julio", last_name: "Vasquez" , email: "admin@admin.com", password: "12345678", password_confirmation: "12345678")

puts "1 User Created + 1 adminUser"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content" , user_id: @user.id)
end

puts "100 posts have been created"