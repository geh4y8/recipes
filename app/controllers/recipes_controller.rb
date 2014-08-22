class RecipesController < ApplicationController

  def index
    @tags = Tag.all
    @recipe = Recipe.new
    @recipes = Recipe.order(stars: :desc)
    render('recipes/index.html.erb')
  end

  def create
    tag = Tag.find(params[:tag_id])
    @recipe = tag.recipes.create(params[:recipes])
    if @recipe.valid?
      redirect_to("/recipes")
    else
      render('recipes/index.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipes])
    redirect_to("/recipes/#{@recipe.id}")
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect_to("/recipes/")
  end
end
