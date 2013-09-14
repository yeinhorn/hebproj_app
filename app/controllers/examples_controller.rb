class ExamplesController < ApplicationController
  
  def new
    self.current_lesson
    @languages = HebprojApp::Application::LANGUAGES
    @example = Example.new
  end

  def create
    @example = self.current_lesson.examples.build(example_params)
    if @example.save
      flash[:success] = "good you created an example!"
      redirect_to current_lesson
    else
      flash.now[:error] = 'Invalid example parameters'
      render 'new'
    end
  end

  def edit 
    self.current_lesson
    @languages = HebprojApp::Application::LANGUAGES
    @example = Example.find_by(params[:id])  
  end

  def update
    @example = Example.find(params[:id])
    if @example.update_attributes(example_params)
      flash[:success] = "Example updated"
      redirect_to @example.lesson
    else
      render 'edit'
    end 
  end


  def destroy
    examp_lesson = Example.find(params[:id]).lesson
    Example.find(params[:id]).destroy
    flash[:success] = "Lesson destroyed."
    redirect_to examp_lesson
  end

  
  def current_lesson
    @current_lesson = Lesson.find_by(params[:lesson_id])
  end


    private
 
  def example_params
    params.require(:example).permit(:hebrew_sentence, :ivrit_sentence, :english_sentence,
                                    :french_sentence, :spanish_sentence, :russian_sentence,
                                    :dutch_sentence, :german_sentence,
                                    :hebrew_note, :ivrit_note, :english_note,
                                    :french_note, :spanish_note, :russian_note,
                                    :dutch_note, :german_note)
  end                                                                   
end                      
