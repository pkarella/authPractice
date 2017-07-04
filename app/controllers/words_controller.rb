class WordsController < ApplicationController
  before_action :authorize, only: [:new,:show]

  def secret
  end

  def index
    @words = Word.all
    render :index
  end
  def show
   @word = Word.find(params[:id])
   render :show
 end

 def new
   @word = Word.new
   render :new
 end

 def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to  words_path
    else
      render :new
    end
  end

private
  def word_params
    params.require(:word).permit(:name,:content)
  end

end
