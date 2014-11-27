require 'spec_helper'

describe 'Performing a search' do
  it 'takes us to the searching page' do
    visit '/'
    fill_in 'From', with: 'Bangalore'
    click_button 'Search'

    expect(page).to have_content 'We are searching, please wait ..'
    expect { page.reload }.to have_content 'Results'
  end
end