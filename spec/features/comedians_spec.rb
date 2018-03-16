RSpec.describe Invoice do
  describe 'When visiting' do

    describe 'read' do
      it 'can see names' do
        visit '/comedians'

        expect(current_path).to eq('/comedians')
        expect(page).to have_content('Iliza Shlesinger')
        expect(page).to have_content('34')
        expect(page).to have_content('Mike Birbiglia')
        expect(page).to have_content('39')
      end
    end
  end
end
