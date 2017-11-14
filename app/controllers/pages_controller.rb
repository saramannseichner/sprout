class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def journey
    @results = Plants.convert_to_num.journey_search([:params])
  end
end
