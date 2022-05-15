class RecepyBooksController < ApplicationController
  before_action :set_recepy_book, only: %i[ show edit update destroy ]

  def index
    @recepy_books = RecepyBook.all
  end

  def show
    @recepies = Recepy.all.my_recepies(@recepy_book)
  end

  def new
    @recepy_book = RecepyBook.new
  end

  def create
    @recepy_book = RecepyBook.new(recepy_book_params)

    if @recepy_book.save
      redirect_to recepy_books_path, notice: 'Recepy Book created'
    else
      redirect_to new_recepy_book_path, alert: 'Deu ruim'
    end
  end

  def edit; end

  def update
    if @recepy_book.update(recepy_book_params)
      redirect_to recepy_books_path, notice: 'Recepy book edited'
    else
      redirect_to edit_recepy_book_path, alert: 'Deu ruim'
    end
  end

  def destroy
    @recepy_book.destroy
    redirect_to recepy_books_path
  end

  private

  def recepy_book_params
    params.require(:recepy_book).permit(:name)
  end

  def set_recepy_book
    @recepy_book = RecepyBook.find(params[:id])
  end
end
