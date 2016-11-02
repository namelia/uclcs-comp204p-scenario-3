module Features
  module SessionHelpers

    def new_reference(number, type, title, author, pubdate)
      visit new_reference_path
      fill_in 'Number', with: number
      fill_in 'Type', with: type
      fill_in 'Title', with: title
      fill_in 'Author', with: author
      fill_in 'Publication Date', with: pubdate
      click_button 'Add'
    end

    def sign_up_with(email, password, confirmation)
      visit new_user_registration_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      fill_in 'Password confirmation', :with => confirmation
      click_button 'Sign up'
    end

    def signin(email, password)
      visit new_user_session_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      click_button 'Sign in'
    end
  end
end
