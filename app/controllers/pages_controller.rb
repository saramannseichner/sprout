class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def journey
    @results = Plants.convert_to_num.journey_search([:params])
    respond_to do |format|
      format.html { render 'journey_results', results: @results }
      format.js  # <-- idem
    end
  end
end
