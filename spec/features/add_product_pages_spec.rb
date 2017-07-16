require 'rails_helper'

describe "the add process for a product" do
  it "will visit the correct page" do
    visit products_path
    expect(page).to have_content 'see'
  end

  it "will login an admin" do
    user = User.create(:email => "superman@super.com", :password => "password")
    user.admin = true
    visit users_path
    click_link "Login"
    fill_in 'Email', :with => "superman@super.com"
    fill_in 'Password', :with => "password"
    click_button 'Log in'
    expect(user.admin).to eq true
  end

  it "will add a product" do
    user = User.create(:email => "superman@super.com", :password => "password")
    user.admin = true
    visit users_path
    click_link "Login"
    fill_in 'Email', :with => "superman@super.com"
    fill_in 'Password', :with => "password"
    click_button 'Log in'
    visit new_product_path
    fill_in 'Name', :with => "Lobster"
    fill_in 'Description', :with => "Maine caught lobis mmmmm"
    fill_in 'Cost', :with => "20.00"
    fill_in 'Country', :with => "United States of America"
    click_on 'Create Product'
    expect(page).to have_content 'Lobster'
  end

  it "will log an admin using factory girl" do
    user = FactoryGirl.create(:user)
    user.admin?.should eq true
  end

  it "will test for adding a product with factory girl" do
    product = FactoryGirl.create(:product)
    expect(product.name).to eq "Nameness"
  end
end
