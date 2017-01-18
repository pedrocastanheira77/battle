feature 'let player see opponents hit points' do
  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_selector('p#p2_hp', text: "HP")
  end
end
