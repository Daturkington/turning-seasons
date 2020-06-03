class ReviewsController < ApplicationController
  before_action :set_user, only: [:new, :create, :update]
  before_action :set_recipe, only: [:new, :create, :update, :edit]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    @review.recipe = @recipe
    if @review.save
      redirect_to recipe_path(@recipe, anchor: "review-#{@review.id}")
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to recipe_path(@review.recipe)
  end

  private

  def set_user
    @user = current_user
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :recipe)
  end
end
