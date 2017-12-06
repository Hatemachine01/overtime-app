require 'rails_helper'

describe 'navigate' do
  before do 
      user = User.create(first_name: "Julio", last_name: "Vasquez" , email: "test@test.com", password: "12345678", password_confirmation: "12345678")
      login_as(user, :scope => :user)
  end
  describe 'index' do
    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Post ' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end

    it "has a list of posts" do
      post_1 = Post.create(date: Date.today, rationale: "Post1")
      post_2 = Post.create(date: Date.today, rationale: "Post2")
      visit posts_path
      expect(page).to have_content(/Post1|Post2/)
    end

  describe 'creation' do 
    before do 
      visit new_post_path
    end
     
      it "has a new form that can be reached" do 
      expect(page.status_code).to eq(200)
      end
      
      it "can be created from new form page" do 
        fill_in 'post[date]', with: Date.today
        fill_in 'post[rationale]', with: 'Some Rationale'
        click_on "Save"
        
        expect(page).to have_content("Some Rationale")
      end 

      it "will have a user associated with it" do
        fill_in 'post[date]', with: Date.today
        fill_in 'post[rationale]', with: 'User Association'
        click_on "Save"
        
       expect(User.last.posts.last.rationale).to eq("User Association")
      end   
    end
  end
end



