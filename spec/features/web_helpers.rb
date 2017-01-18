def sign_in_and_play
  visit '/'
  fill_in('p1_name', with: 'Rick')
  fill_in('p2_name', with: 'Pedro')
  click_button('submit_players')
end
