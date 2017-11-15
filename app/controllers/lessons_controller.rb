class LessonsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @day = Day.find(params[:day_id])
    @lesson = @day.lessons.new
  end

  def create
    @day = Day.find(params[:day_id])
    @lesson = @day.lessons.new(lesson_params)
    if @lesson.save
      redirect_to day_path(@lesson.day)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @day = Day.find(params[:day_id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @day = @lesson.day
    if @lesson.update(lesson_params)
      redirect_to day_path(@day)
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @day = Day.find(params[:day_id])
    @lesson.destroy
      redirect_to day_path(@day)
  end

  private
  def lesson_params
    params.require(:lesson).permit(:description)
  end
end
