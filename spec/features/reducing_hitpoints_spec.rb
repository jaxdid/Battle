require 'capybara/dsl'
require 'selenium-webdriver'

feature 'reduce hitpoints' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end



  scenario 'reduce Player 2\'s hitpoints' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).not_to have_content("Rebecca's HP: 100/100")
    expect(page).to have_content("Rebecca's HP: 90/100")
  end
end