class ScoresController < ApplicationController
  respond_to :html, :json

  def index
    respond_with @scores = Score.all
  end

  def create
    @score = Score.new(params[:score])
    @score.save
    render nothing: true
  end
end
