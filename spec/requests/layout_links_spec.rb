require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Contact page at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
      get '/about'
      response.should have_selector('title', :content => "About")
  end

  it "should have a Sales page at '/sales'" do
      get '/sales'
      response.should have_selector('title', :content => "Sales")
  end
  
  it "should have a signup page at '/register'" do
      get '/register'
      response.should have_selector('title', :content => "Register")
    end
end

