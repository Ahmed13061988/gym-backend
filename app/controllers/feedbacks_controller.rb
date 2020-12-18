class FeedbacksController < ApplicationController
    def create
        feedback = logged_in_user.feedbacks.create(feedback_params)
        render json: feedback
      end
    
      private
    
      def review_params
        params.permit(:gym_id, :content, :rating)
      end
end
