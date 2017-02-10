require 'rails_helper'

describe 'the deleting a bear process' do
  it 'deletes a bear from the list of bears' do
    bear = Bear.create(:name => "Tummi Gummi", :cost => 4, :country => "Japan", :color => 'Blue', :hobby => "Fly Fishing")
    visit bear_path(bear)
    click_link 'Delete'
    expect(page).not_to have_content('Tummi Gummi')
  end
end
