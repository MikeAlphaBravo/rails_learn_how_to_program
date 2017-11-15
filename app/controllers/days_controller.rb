class DaysController < ApplicationController

  def index
    @week = Week.find(params[:week_id])
    @days = @week.day.all
  end

  def show
    @day = Day.find(params[:id])
  end
  
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

  def edit
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
    render :edit
  end

  def update
    @day = Day.find(params[:id])
    @week = @day.week
    if @day.update(day_params)
      redirect_to week_path(@week)
    else
      render 'days/edit'
    end
  end

  def destroy
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to week_path(@week)
  end

  private
  def day_params
    params.require(:day).permit(:name)
  end

end
