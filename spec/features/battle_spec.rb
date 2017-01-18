describe Battle do
  feature 'let players enter their name' do
     scenario 'user fills in name form' do
       sign_in_and_play
       expect(page).to have_text("Rick")
       expect(page).to have_text("Pedro")
     end
   end
end
