class PredictionsController < ApplicationController
  before_action :set_prediction, only: [:show, :edit, :update, :destroy]

  # GET /predictions
  def index
    @predictions = Prediction.all
  end

  # GET /predictions/1
  def show
  end

  # GET /predictions/new
  def new
    @prediction = Prediction.new
  end

  # GET /predictions/1/edit
  def edit
  end

  # POST /predictions
  def create
    @prediction = Prediction.new(prediction_params)

    if @prediction.save
      redirect_to @prediction, notice: 'Prediction was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /predictions/1
  def update
    if @prediction.update(prediction_params)
      redirect_to @prediction, notice: 'Prediction was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /predictions/1
  def destroy
    @prediction.destroy
    redirect_to predictions_url, notice: 'Prediction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prediction
      @prediction = Prediction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prediction_params
      params.require(:prediction).permit(:user, :guess, :pdate, :time)
    end
end
