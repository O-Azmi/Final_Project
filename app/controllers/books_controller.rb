class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :genre, :publisher).page(params[:page]).per(50)

    @genres = Genre.all

    if params[:search].present?
      search_query = "%#{params[:search]}%"
      @books = @books.where("book_name LIKE ? OR book_description LIKE ?", search_query, search_query)
    end

    if params[:genre_id].present?
      @books = @books.where(genre_id: params[:genre_id])
    end

  end

  def show
    @book = Book.find(params[:id])
  end
end
