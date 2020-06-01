class ReviewsController < ApplicationController
  before_action :set_user, only: [:new, :create]
  before_action :set_recipe, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    @review.recipe = @recipe
    if @review.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
