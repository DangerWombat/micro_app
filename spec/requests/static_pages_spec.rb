require 'spec_helper'

describe "Static pages" do

  subject {page}

<<<<<<< HEAD
  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title(''))}
    it { should_not have_selector 'title', text: '| Home' }
=======
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
>>>>>>> master
    end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

  describe "Contact Page" do

   it "should have the h1 'Contact Us'" do
     visit '/static_pages/contact'
     page.should have_selector('h1', :text => 'Contact Us')
  end

   it "should have the title 'Contact Us'" do
     visit '/static_pages/contact'
     page.should have_selector('title',
                   :text => "Ruby on Rails Tutorial Sample App | Contact Us")
   end
  end
end