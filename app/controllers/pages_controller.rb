class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if params[:plants].nil?
      @results = Plant.all
    else
      @results = params[:plants]
    end
  end

  def journey
    @results = Plant.journey_search(params[:sun].to_i, params[:care].to_i)
    respond_to do |format|
      format.html { render root(plants: @results) }
      format.js
    end
  end
end
