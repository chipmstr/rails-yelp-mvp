class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.' # redirect to restaurant's show page
    else
      render 'restaurants/show' # re-render the restaurant show page with the review form
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
