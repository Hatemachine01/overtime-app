FactoryGirl.define do 
	factory :user do
		first_name 'Jon'
		last_name  'Snow'
		email		'test@gmail.com'
		password    '12345678'
		password_confirmation '12345678' 		
	end
	
	factory :admin_user, class: "AdminUser" do 
		first_name 'Admin'
		last_name  'User'
		email		'admin@gmail.com'
		password    '12345678'
		password_confirmation '12345678' 
	end
end