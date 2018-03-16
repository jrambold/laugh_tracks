RSpec.describe Comedian do
  describe 'When visiting' do

    describe 'read' do
      it 'can see names and ages' do
        visit '/comedians'

        expect(current_path).to eq('/comedians')
        expect(page).to have_content('Iliza Shlesinger')
        expect(page).to have_content(34)
        expect(page).to have_content('Mike Birbiglia')
        expect(page).to have_content(39)
      end
      it 'can see specials' do
        visit '/comedians'

        expect(current_path).to eq('/comedians')
        expect(page).to have_content('War Paint')
        expect(page).to have_content('Freezing Hot')
      end
    end
  end
end
