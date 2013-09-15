class VotesController < ApplicationController
	def create
    prediction = Prediction.find(params[:prediction_id])
    vote = prediction.votes.build
    vote.save!
    redirect_to(predictions_path)
  end
end
