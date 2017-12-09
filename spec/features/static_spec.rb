# spec/features/static_spec.rb

require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do
    it 'can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end

    it 'has link to create new post' do
      visit root_path
   	  click_link('new_post_from_nav')
    end
  end
end
