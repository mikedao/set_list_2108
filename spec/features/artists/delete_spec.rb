require 'rails_helper'

# As a visitor
# When I visit the artists index page
# And click a button 'Delete' next to an artist
# Then I am redirected back to the artists index page
# And I no longer see that artist

RSpec.describe 'Artist Delete' do
  describe 'as a visitor' do
    describe 'when i visit the artists index page' do
      it 'can delete an artist' do
        rick = Artist.create(name: 'Rick Astley')

        visit '/artists'

        click_button 'Delete'

        expect(current_path).to eq('/artists')
        expect(page).to_not have_content('Rick Astley')
        expect(page).to_not have_button('Delete')
      end
    end
  end
end

