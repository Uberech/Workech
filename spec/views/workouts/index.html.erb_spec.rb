require 'rails_helper'

RSpec.describe "workouts/index", type: :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(
        :description => "Description",
        :completed => false,
        :User => nil
      ),
      Workout.create!(
        :description => "Description",
        :completed => false,
        :User => nil
      )
    ])
  end

  it "renders a list of workouts" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
