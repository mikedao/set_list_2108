require 'rails_helper'

RSpec.describe 'New Artist' do
  describe 'as a visitor' do
    describe 'when i visit the artist index page' do
      it 'can create a new artist' do
        visit '/artists'

        click_link 'New Artist'

        expect(current_path).to eq('/artists/new')

        fill_in 'Name', with: 'Megan'
        click_on 'Create Artist'

        expect(current_path).to eq('/artists')        
        expect(page).to have_content('Megan')
      end
    end
  end
end