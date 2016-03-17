require 'rails_helper'

RSpec.describe "workouts/new", type: :view do
  before(:each) do
    assign(:workout, Workout.new(
      :description => "MyString",
      :completed => false,
      :User => nil
    ))
  end

  it "renders new workout form" do
    render

    assert_select "form[action=?][method=?]", workouts_path, "post" do

      assert_select "input#workout_description[name=?]", "workout[description]"

      assert_select "input#workout_completed[name=?]", "workout[completed]"

      assert_select "input#workout_User_id[name=?]", "workout[User_id]"
    end
  end
end
