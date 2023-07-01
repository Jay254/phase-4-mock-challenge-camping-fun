class ActivitiesController < ApplicationController
    def index
      activities = Activity.all
      render json: activities, status: :ok
    end
  
    def destroy
      activity = Activity.find_by(id: params[:id])
      if activity
        activity.destroy
        render json: { message: 'Activity and associated Signups deleted' }, status: :ok
      else
        render json: { error: 'Activity not found' }, status: :not_found
      end
    end
end  