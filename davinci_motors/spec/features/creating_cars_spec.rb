require "rails_helper"

feature "Creating Cars" do
scenario "can create a car" do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end
end

feature "Reading car info at index" do
  scenario "Prints car info in index" do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('Ford')
    expect(page).to have_content('Mustang')
    expect(page).to have_content('1967')
    expect(page).to have_content('2300')
  end
end

feature "Creating two cars" do
  scenario "Can create two cars" do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('Ford')
    expect(page).to have_content('Mustang')
    expect(page).to have_content('1967')
    expect(page).to have_content('2300')

    click_link 'New Car'

    fill_in 'Make', with: 'Chevy'
    fill_in 'Model', with: 'Avalanche'
    fill_in 'Year', with: '2012'
    fill_in 'Price', with: '13000'

    click_button 'Create Car'

    expect(page).to have_content('Chevy')
    expect(page).to have_content('Avalanche')
    expect(page).to have_content('2012')
    expect(page).to have_content('13000')
  end
end

feature "Editing cars" do
  scenario "Edits car info" do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    click_link 'Edit'

    fill_in 'Model', with: 'Explorer'

    click_button 'Update Car'

    expect(page).to have_content('Ford')
    expect(page).to have_content('Explorer')
    expect(page).to have_content('1967')
    expect(page).to have_content('2300')
  end
end
