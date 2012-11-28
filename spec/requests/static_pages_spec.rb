require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path } 
    it {should have_selector('h1', :text => 'Object Span')}
    it {should have_selector('title', :text => full_title(''))}
   end

  describe "Product" do
    before { visit product_path } 
    it {should have_selector('h1', :text => 'Products')}
    it {should have_selector('title', :text => full_title('Products'))}
  end

  describe "Contact page" do
    before {visit contact_path}
    it {should have_selector('h1', :text => 'Contact')}
    it {should have_selector('title', :text => full_title('Contact'))}
  end

end
