class DaysController < ApplicationController
  def new
    @week = Week.find(params[:week_id])
    @day = @week.days.new
  end


  def create
    @week = Week.find(params[:week_id])
    @day = @week.days.new(day_params)
    if @day.save
      redirect_to week_path(@day.week)
    else
      render :new
    end
  end

  private
  def day_params
    params.require(:day).permit(:name)
  end

end
