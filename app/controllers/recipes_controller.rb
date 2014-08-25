class RecipesController < ApplicationController

  def index
    @tags = Tag.all
    @recipe = Recipe.new
    @recipes = Recipe.order(stars: :desc)
  end

  def create
    @recipes = Recipe.all
    @tags = Tag.all
    tag = Tag.find(params[:tag_id])
    @recipe = tag.recipes.create(params[:recipes])
    if @recipe.valid?
      flash[:notice] = "Your recipe was added to the database!"
      redirect_to recipes_path
    else
      render 'index'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipes])
    flash[:notice] = "#{@recipe.title} updated"
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    flash[:notice] = "#{@recipe.title} deleted."
    @recipe.delete
    redirect_to recipes_path
  end
end
