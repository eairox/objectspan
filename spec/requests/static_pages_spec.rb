require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Object Span'" do
      visit root_path
      page.should have_selector('h1', :text => 'Object Span')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        :text => "Object Span")
    end

  end

  describe "Product" do

     it "should have the h1 'Product'" do
      visit product_path
      page.should have_selector('h1', :text => 'Products')
    end

    it "should have the title 'Products'" do
      visit product_path
      page.should have_selector('title',
                        :text => "Object Span | Products")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                        :text => "Object Span | Contact")
    end
  end



end
