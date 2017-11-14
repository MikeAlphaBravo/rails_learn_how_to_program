class WeeksController < ApplicationController
  def index
    @weeks = Week.all
    render :index
  end

  def show
    @week = Week.find(params[:id])
      render :show
  end

  def new
    @week = Week.new
    render :new
  end

  def create
    @week = Week.new(week_params)
    if @week.save
      redirect_to weeks_path
    else
      render :new
    end
  end

  def edit
    @week = Week.find(params[:id])
    render :edit
  end

  def update
    @week = Week.find(params[:id])
    if @week.update(week_params)
      redirect_to weeks_path
    else
      render :edit
    end
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy
    redirect_to weeks_path
  end


  private
    def week_params
      params.require(:week).permit(:name)
    end

end
