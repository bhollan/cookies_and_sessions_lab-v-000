require 'rails_helper'
require 'spec_helper'

RSpec.describe "homepage", :type => :view do
  it "adds items to the cart when they're submitted on its form" do
    visit '/'
    fill_in 'product', with: 'kumquats'
    click_button 'add to cart'
    expect(page.body).to include 'kumquats'
  end
end
