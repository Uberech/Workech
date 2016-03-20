class WorkoutsController < ApplicationController
  before_action :all_workouts, only: [:index, :create, :update, :destroy]
  before_action :set_workouts, only: [:edit, :update, :destroy]
  respond_to :html, :js

  def index
    @workouts = Workout.all
  
    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @workout = Workout.new
  end
  
  def update
    @workout.update_attributes(workout_params)
  end

  def create
    @workout  = Workout.create(workout_params)
  end
  
  def destroy
    @workout.destroy
  end

  private

    def all_workouts
      @workouts = Workout.all
    end
    
    def set_workouts
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(:description, :workout_date, :completed, :user_id)
    end
end