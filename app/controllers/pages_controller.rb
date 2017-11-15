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
    options = {}
    options[:sun] = params[:sun].to_i
    options[:care] = params[:care].to_i
    if params[:size] == "nil"
      options[:size] = nil
    else
      options[:size] = params[:size].to_i
    end
    @results = Plant.journey_search(options)
    respond_to do |format|
      format.html { render root(plants: @results) }
      format.js
    end
  end
end
