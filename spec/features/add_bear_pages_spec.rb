require 'rails_helper'

describe "the add a bear process" do
  it "Adds a new Bear" do
    visit bears_path
    click_link 'Create My Profile!'
    fill_in 'bear[name]', :with => 'Gummy Bear'
    fill_in 'bear[cost]', :with => '5'
    fill_in 'bear[country]', :with => 'Finland'
    fill_in 'bear[color]', :with => 'Red'
    fill_in 'bear[hobby]', :with => 'wine tasting'
    click_on 'Create Bear'
    expect(page).to have_content('Gummy Bear')
  end


  it 'gives an error if there is a missing text input' do
    visit bears_path
    click_link 'Create My Profile!'
    fill_in 'bear[name]', :with => 'Gummy Bear'
    fill_in 'bear[cost]', :with => '5'
    fill_in 'bear[country]', :with => 'Finland'
    click_on 'Create Bear'
    expect(page).to have_content('errors')
  end
end
