class WeeksController < ApplicationController
  def index
    @weeks = Week.all
    render :index
  end
end
