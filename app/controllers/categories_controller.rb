class CategoriesController < ApplicationController
  def new
  end

  def edit
  end

  def show
  end

  def index
    @categories = Category.all
  end
end
