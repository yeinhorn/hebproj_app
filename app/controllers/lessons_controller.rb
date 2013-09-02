class LessonsController < ApplicationController
   NUMBER_OF_CLASSES=5
 
  
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:success] = "good you created a lesson!"
      redirect_to @lesson
    else
      flash.now[:error] = 'Invalid lesson parameters'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @lesson.update_attributes(user_params)
      flash[:success] = "Lesson updated"
      redirect_to @lesson
    else
      render 'edit'
    end 
  end

  def show
    @lesson = Lesson.find(params[:id])
  end
  
  def index
    @number_of_classes = NUMBER_OF_CLASSES
  end

  def lesson_index
    @lessons = Lesson.find_by(class_num: params[:id])
  end

  def destroy
    Lesson.find(params[:id]).destroy
    flash[:success] = "Lesson destroyed."
    redirect_to lessons_url
  end
end
