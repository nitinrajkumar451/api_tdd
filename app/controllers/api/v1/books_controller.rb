module Api
    module V1
        class BooksController < ApplicationController
            before_action :set_book, only: %[update show destroy]
            # GET /books
            def index
              @books = Book.all
              render json: BooksRepresenter.new(@books).as_json
            end

        end
    end
 end