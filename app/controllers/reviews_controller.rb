class ReviewsController < ApplicationController
before_action :set_review, only: [:show, :edit, :update, :destroy]
before_action :set_book
before_action :authenticate_user!

	def index
	@reviews = Review.all
	end

	def show
	end


	def new
	@review = Review.new
	end


	def edit
	end

	def create
	@review = Review.new(review_params)
	@review.user_id = current_user.id
	@review.book_id = @book.id

	if @review.save
		redirect_to @book
	else
	render 'new'
	end
	end

	def update
	@review.update(review_params)
	end

	def destroy
	@review.destroy
	redirect_to root_path
	end

	private
	def set_review
	@review = Review.find(params[:id])
	end
	def set_book
	@book = Book.find(params[:book_id])
	end
# Never trust parameters from the scary internet, only allow the white list through.
	def review_params
params.require(:review).permit(:rating, :comment)
	end
	end
