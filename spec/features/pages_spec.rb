require 'rails_helper'

RSpec.feature "Visiting Pages" do

  scenario "Landing"  do
    visit "/"
    expect(page).to have_content('Workech')
    expect(page).to have_content('Sign up')

  end

  scenario "Workouts"  do
    visit "/workouts"
    expect(page).to have_content('My Workouts')
    
    # user can add planned workouts for the next week. 
    
  end

  scenario "Friend's Workouts"  do
    visit "/workouts/friends"
    expect(page).to have_content("Friend's Workouts")
  end

  scenario "Summary"  do
    visit "/workouts/summary"
    expect(page).to have_content("Tasks for this Week")
    # Build a summary page - this lists your own percentage completion for the 
    #  week (completed vs planned) and lists all the friends percentage 
    #  completion for the week (completed vs planned)
    
    # As user completes a workout for the week, they can click on a checkbox 
    #  and that workout shows as completed. As the week ends, a percentage 
    #  calculation is done on the workouts completed 
  end

  scenario "Search"  do
    pending "Add search tests"
    expect(1).to eq(0)
    # They will need ability to search for friends by email address or username. 
    #  If they find friends, they can add them to their friends list. The 
    #  friend who has been added will also find the user who added them in 
    #  their friends list (both -ways). Bonus - Add an accept option so the 
    #  friend isn't automatically added but is added once the requested friend 
    #  accepts this request
  end

  scenario "Friendship"  do
    pending "Add friendship tests"
    expect(1).to eq(0)
    # Use the has_friends gem to handle friendship modeling.
  end

  scenario "Nav"  do
    pending "Add helper for nav checking"
    expect(1).to eq(0)
  end

  scenario "Footer"  do
    pending "Add helper for footer checking"
    expect(1).to eq(0)
    # Footer should include a link to Uberech
  end
  
end