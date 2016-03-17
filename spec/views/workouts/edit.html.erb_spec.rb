require 'rails_helper'

RSpec.describe "workouts/edit", type: :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
      :description => "MyString",
      :completed => false,
      :User => nil
    ))
  end

  it "renders the edit workout form" do
    render

    assert_select "form[action=?][method=?]", workout_path(@workout), "post" do

      assert_select "input#workout_description[name=?]", "workout[description]"

      assert_select "input#workout_completed[name=?]", "workout[completed]"

      assert_select "input#workout_User_id[name=?]", "workout[User_id]"
    end
  end
end
