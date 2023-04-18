# frozen_string_literal: true

class BookReflex < ApplicationReflex
    def submit
        book = element.dataset.book_id.nil ? Book.new : Book.find(element.dataset.book_id)
        book.assign_attributes(book_params)
        book.save
        morph "#new_book", render(partial: "books/form", locals: {book: Book.new})
        morph "#books", render(Book.all)
    end

    private 

    def book_params
        params.require(:book).permit(:vinculo, :titutlo, :autor, :edicao, :issn, :ano, :editora)
    end
end
