class WordsController < ApplicationController
def new
    self.current_lesson
    @languages = HebprojApp::Application::LANGUAGES
    @word = Word.new
  end

  def create
    @word = self.current_lesson.words.build(word_params)
    if @word.save
      flash[:success] = "good you created a word!"
      redirect_to current_lesson
    else
      flash.now[:error] = 'Invalid word parameters'
      render 'new'
    end
  end

  def edit 
    self.current_lesson
    @languages = HebprojApp::Application::LANGUAGES
    @word = Word.find_by(params[:id])  
  end

  def update
    @word = Word.find(params[:id])
    if @word.update_attributes(word_params)
      flash[:success] = "Word updated"
      redirect_to @word.lesson
    else
      render 'edit'
    end 
  end


  def destroy
    word_lesson = Word.find(params[:id]).lesson
    Word.find(params[:id]).destroy
    flash[:success] = "Word destroyed."
    redirect_to word_lesson
  end

  
  def current_lesson
    @current_lesson = Lesson.find_by(params[:lesson_id])
  end


    private
 
  def word_params
    params.require(:word).permit(:hebrew, :ivrit, :english,
                                    :french, :spanish, :russian,
                                    :dutch, :german, :verb, :shoresh,
                                    :shoresh_type, :main_word,
                                    :order_num)
  end                                                                   
end    

