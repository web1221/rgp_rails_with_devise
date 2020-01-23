require 'rails_helper'

describe('create an location path', {:type => :feature}) do
  before(:each) do
    visit('/')
    find_link('Sign up').click
    fill_in('Email', :with => 'abc@gmail.com')
    fill_in('Password', :with => 'test111')
    fill_in('Password confirmation', :with => 'test111')
    click_on('Sign up')
  end
  it('creates an location and then goes to the location page') do
    visit('/')
    click_on('Locations')
    click_on('Create new location')
    fill_in('Name', :with => 'Place')
    click_on('Create Location')
    expect(page).to have_content('Place')
  end
end

# describe('create a song path', {:type => :feature}) do
#   it('creates an location and then goes to the location page') do
#     location = location.new("Yellow Submarine", nil, 1960, "pop", "The Beatles", nil)
#     location.save
#     visit("/locations/#{location.id}")
#     fill_in('song_name', :with => 'All You Need Is Love')
#     click_on('Add song')
#     expect(page).to have_content('All You Need Is Love')
#   end
# end
