require 'spec_helper'

describe PagesController do
  render_views
  
  before (:each) do
    @base_title = "Entree"
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
          get 'about'
          response.should have_selector("title", :content => @base_title + " | About")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
            get 'contact'
            response.should have_selector("title", :content => @base_title + " | Contact")
    end
  end

  describe "GET 'sales'" do
    it "should be successful" do
      get 'sales'
      response.should be_success
    end
   
    it "should have the right title" do
            get 'sales'
            response.should have_selector("title", :content => @base_title + " | Sales")
    end
  end
end
