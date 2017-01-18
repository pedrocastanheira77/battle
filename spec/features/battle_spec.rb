describe Battle do
  feature 'let players enter their name' do
     scenario 'user fills in name form' do
       visit '/'
       fill_in('p1_name', with: 'Rick')
       fill_in('p2_name', with: 'Pedro')
       click_button('submit_players')
       expect(page).to have_text("Rick")
       expect(page).to have_text("Pedro")
     end
   end

  feature 'let player see opponents hit points' do
    scenario 'player 1 can see player 2 hit points' do
      visit '/play'
      expect(page).to have_selector('p#p2_hp', "HP")
    end
  end
end
