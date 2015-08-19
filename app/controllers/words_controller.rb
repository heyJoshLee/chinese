class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def show
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_parmas)

    if @word.save 
      redirect_to words_path
    else
      redirect_to :back
    end

  end

  private

  def word_parmas
    params.require(:word).permit!
  end

end