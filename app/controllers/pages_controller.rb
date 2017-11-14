class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def journey
    num = convert_to_num([:params])
    @results = Plant.journey_search(num)
    respond_to do |format|
      format.html { render 'journey_results', results: @results }
      format.js
    end
  end
end
