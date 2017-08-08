require 'rails_helper.rb'
 
feature 'Creating brand' do  
  scenario 'can create a brand' do
    visit '/'
    click_link 'Add new brand'
    fill_in 'brand_name', with: 'Michelada' 
    click_button 'Save'
    expect(page).to have_content('Brand created successfully')
  end
end