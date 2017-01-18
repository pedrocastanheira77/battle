describe Battle do
  feature 'let players enter their name' do
     scenario 'user fills in name form' do
       visit '/'
       fill_in('p1_name', with: 'Rick')
       fill_in('p2_name', with: 'Pedro')
       click_button('submit_players')
       expect(page).to have_text("Rick and Pedro have entered the game")
     end
   end
 end
