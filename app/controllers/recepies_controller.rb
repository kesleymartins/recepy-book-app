class RecepiesController < ApplicationController
  before_action :set_recepy_book, only: %i[ show new create ]
  
  def show
    @recepy = @recepy_book.recepies.find(params[:id])
  end

  def new
    @recepy = @recepy_book.recepies.build
  end

  def create
    @recepy = @recepy_book.recepies.build(recepy_params)

    if @recepy.save
      redirect_to recepy_book_recepy_path(@recepy)
    else
      redirect_to @recepy_book
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_recepy_book
    @recepy_book = RecepyBook.find(params[:recepy_book_id])
  end

  def recepy_params
    params.require(:recepy).permit(:title, :preparation_time, :portion)
  end
end
