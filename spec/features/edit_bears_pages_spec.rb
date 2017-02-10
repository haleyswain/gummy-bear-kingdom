require 'rails_helper'

describe 'the edit a bear path' do
  it 'edits a bears attributes' do
    bear = Bear.create(:name => "Tummi Gummi", :cost => 4, :country => "Japan", :color => 'Blue', :hobby => "Fly Fishing")
    visit bear_path(bear)
    click_link 'Edit'
    fill_in 'bear[name]', :with => "Sunni"
    click_on 'Update Bear'
    expect(page).to have_content('Sunni')
  end


  it 'gives an error if no name is entered' do
    bear = Bear.create(:name => "Tummi Gummi", :cost => 4, :country => "Japan", :color => 'Blue', :hobby => "Fly Fishing")
    visit bear_path(bear)
    click_link 'Edit'
    fill_in 'bear[name]', :with => ""
    click_on 'Update Bear'
    expect(page).to have_content('errors')
  end
end
